class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
    @categories = Problem::CATEGORY
  end

  def show
    @solution = Solution.find(params[:id])
    @pitches = @solution.pitches
  end

  def new
    @solution = Solution.new
    @problem = Problem.find(params[:problem_id])
  end

  def create
    @solution = Solution.new(set_params)
    @problem = Problem.find(params[:problem_id])
    @solution.problem = @problem
    @solution.user = current_user
    @solution.chatroom = Chatroom.new(name: @solution.title, solution: @solution)

    if @solution.save!
      voters = @problem.votes.map { |vote| vote.user }

      (voters.uniq - [current_user]).each do |voter|
        Notification.create(recipient: voter, actor: current_user, action: "submitted", notifiable: @solution)
      end
      
      Notification.create(recipient: @problem.user, actor: current_user, action: "submitted", notifiable: @solution)
      redirect_to solution_path(@solution), notice: "Solution added!"
    else
      render :new
    end
  end

  def leaderboard
    votes_count = Vote.where(votable_type: "Solution")
            .group(:votable_id)
            .count
    @votes = votes_count.sort_by { |k, v| -v }
  end

  def upvote
    @solution = Solution.find(params[:id])
    Vote.create(votable: @solution, user: current_user)
    Notification.create(recipient: @solution.user, actor: current_user, action: "voted", notifiable: @solution)

    redirect_to solution_path
  end

  def bookmark
    @solution = Solution.find(params[:id])
    Bookmark.create(bookmarked: @solution, user: current_user)
    redirect_to solution_path
  end

  def unbookmark
    @solution = Solution.find(params[:id])
    Bookmark.where(bookmarked_id: @solution, user_id: current_user.id).first.destroy
    redirect_to solution_path
  end

  def collaborate
    @solution = Solution.find(params[:id])
    Collaboration.create(solution: @solution, user: current_user, status: "Pending")
    Notification.create(recipient: @solution.user, actor: current_user, action: "requested", notifiable: @solution.collaborations.last)

    redirect_to solution_path(@solution)
  end

  def collab_status
    @collaboration = Collaboration.find(params[:id])
    @collaboration.status = params[:status]
    @collaboration.save!
    if @collaboration.status == "Accepted"
      Notification.create(recipient: @collaboration.user, actor: current_user, action: "accepted", notifiable: @collaboration)
    end
    redirect_to solution_path(@collaboration.solution)
  end

  private

  def set_params
    params.require(:solution).permit(:title, :description)
  end
end
