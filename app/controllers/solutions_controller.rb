class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
  end

  def show
		@problem = Problem.find(params[:id])
		@solutions = @problem.solutions
    @solution = @solutions.find(params[:problem_id])
  end

  # Need to fix error with problem_id and id swapped in url path

  def new
  end

  def create
  end

  # def leaderboard
  #     @solutions = Solution.order("votes").last(5)
  # end
end
