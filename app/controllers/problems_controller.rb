class ProblemsController < ApplicationController
  def index
    @problems = Problem.all
    @categories = Problem::CATEGORY
  end

  def show
    @problem = Problem.find(params[:id])
    @solutions = @problem.solutions
    @comment = Comment.new
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(set_params)
    @problem.user = current_user
    if @problem.save!
      redirect_to problem_path(@problem), notice: "Problem created!"
    else
      render :new
    end
  end

  def leaderboard
    votes_count = Vote.where(votable_type: "Problem")
            .group(:votable_id)
            .count
    @votes = votes_count.sort_by { |k, v| -v }
  end

  def upvote
    @problem = Problem.find(params[:id])
    Vote.create(votable: @problem, user: current_user)
    @notif = Notification.create(recipient: @problem.user, actor: current_user, action: "voted", notifiable: @problem)
    
    NotificationChannel.broadcast_to(
      @problem.user,
      { notification_body: render_to_string(partial: "shared/notification", locals: { notif: @notif }),
      notification_counter: @problem.user.notifications.unread.count 
      }
    )
    redirect_to problem_path
  end

  def bookmark
    @problem = Problem.find(params[:id])
    Bookmark.create(bookmarked: @problem, user: current_user)
    redirect_to problem_path
  end

  def unbookmark
    @problem = Problem.find(params[:id])
    Bookmark.where(bookmarked_id: @problem, user_id: current_user.id).first.destroy
    redirect_to problem_path
  end

  private

  def set_params
    params.require(:problem).permit(:title, :description, :category)
  end
end
