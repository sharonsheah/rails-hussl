class PitchesController < ApplicationController
  before_action :set_pitch, only: [ :show, :edit, :update, :create ]
  def index
    @pitches = Pitch.all
  end

  def show; end

  def new
      @pitch = Pitch.new
  end

  def create
      @pitch = Pitch.new(pitch_params)
      @pitch.user = params[:user_id]
      @pitch.solution = params[:solution_id]
      @pitch.save!

      redirect_to problem_solution_path(@pitch)
  end

  
  def edit; end


  private

  
  def set_pitch
    @pitch = Pitch.find(params[:id])
end

  def pitch_params
      params.require(:pitch).permit(:title, :description)
  end

end
