class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all
  end

  def show
    @pitch = Pitch.find(params[:id])
    @solution = @pitch.solution
    @pitches = @solution.pitches
    @problem =  @solution.problem
    @comment = Comment.new
  end

  def new
      @pitch = Pitch.new
      @solution = Solution.find(params[:solution_id])
      @problem = @solution.problem
  end

  def create
      @pitch = Pitch.new(pitch_params)
      @solution = Solution.find(params[:solution_id])
      @pitch.solution = @solution
      @pitch.user = current_user
      if @pitch.save!
        redirect_to pitch_path(@pitch), notice: "Pitch submitted!"
      else
        render :new
      end
  end

  def leaderboard
    votes_count = Vote.where(votable_type: "Pitch")
            .group(:votable_id)
            .count
    @votes = votes_count.sort_by { |k, v| -v }
  end

  def upvote
    @pitch = Pitch.find(params[:id])
    Vote.create(votable: @pitch, user: current_user)
    collaborators = @pitch.solution.collaborators
    (collaborators.uniq - [current_user]).each do |collaborator|
      Notification.create(recipient: collaborator, actor: current_user, action: "voted", notifiable: @pitch)
    end
    Notification.create(recipient: @pitch.user, actor: current_user, action: "voted", notifiable: @pitch)
    redirect_to pitch_path
  end

  private

  def pitch_params
    params.require(:pitch).permit(:title, :description, :photo, :link)
  end
end
