class ProblemsController < ApplicationController
  def index
    @problems = Problem.all
  end

	def show
		@problem = Problem.find(params[:id])
		@solutions = @problem.solutions
	end

	def new
		@problem = Problem.new
	end

  def create
    @problem = Problem.new(set_params)
    @problem.user = current_user
    @problem.save!

    redirect_to problems_path
  end

  # def leaderboard
  #   @votes = Vote.where(votable: "Problem").group(:votable).count
  # end


  def upvote
    @problem = Problem.find(params[:id])
    @problem.votes.create
    redirect_to(problems_path)
  end

	private

	def set_params
		params.require(:problem).permit(:title, :description, :category)
	end
end
