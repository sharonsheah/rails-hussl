class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
  end

  def show
    @solution = Solution.find(params[:id])
  end

  def new
    @solution = Solution.new
    @problem = Problem.find(params[:problem_id])
  end

  def create
    @solution = Solution.new(set_params)
    @problem = Problem.find(params[:problem_id])
    @solution.problem = @problem
    @solution.user = current_user
    @solution.save!

    redirect_to problems_path
  end

  # def leaderboard
  #     @solutions = Solution.order("votes").last(5)
  # end

  private

  def set_params
    params.require(:solution).permit(:title, :description)
  end
end
