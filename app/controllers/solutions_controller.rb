class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
  end

  def show
    @solution = Solution.find(params[:id])
  end

  # Need to fix error with problem_id and id swapped in url path

  def new
    @solution = Solution.new
  end

  def create
  end

  # def leaderboard
  #     @solutions = Solution.order("votes").last(5)
  # end
end
