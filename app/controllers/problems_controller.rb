class ProblemsController < ApplicationController
  def index
    @problems = Problem.all
  end

	def show
		@problem = Problem.find(params[:id])
	end

	def new
		@problem = Problem.new
	end

	def create
		@problem = Problem.new(set_params)
		@problem.user = params[:user_id]
	end

    # def leaderboard
    #     @problems = Problem.order("votes").last(5)
    # end

	private

	def set_params
		params.require(:problem).permit(:title, :description)
	end
end
