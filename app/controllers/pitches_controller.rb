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


  private

  def pitch_params
      params.require(:pitch).permit(:title, :description)
  end

end