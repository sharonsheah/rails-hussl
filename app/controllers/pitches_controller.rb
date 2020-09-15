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
  end

  def create
      @pitch = Pitch.new(pitch_params)
      @solution = Solution.find(params[:solution_id])
      @pitch.solution = @solution
      @problem = Problem.find(params[:problem_id])
      @solution.problem = @problem
      @pitch.user = current_user
      @pitch.save!

      redirect_to pitch_path(@pitch)
  end


  private

  def pitch_params
      params.require(:pitch).permit(:title, :description)
  end

end
