class PitchesController < ApplicationController
  def index
    @pitches = Pitch.all
  end

  def show
    @pitch = Pitch.find(params[:id])
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
      @pitch.save!

      redirect_to pitch_path(@pitch)
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
    redirect_to pitch_path
  end

  private

  def pitch_params
      params.require(:pitch).permit(:title, :description)
  end
end
