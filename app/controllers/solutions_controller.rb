class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
    @categories = Problem::CATEGORY
  end

  def show
    @solution = Solution.find(params[:id])
    @pitches = @solution.pitches
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

    redirect_to problem_path(@problem), notice: "Solution added!"
  end

  def leaderboard
    votes_count = Vote.where(votable_type: "Solution")
            .group(:votable_id)
            .count
    @votes = votes_count.sort_by { |k, v| -v }
  end

  def upvote
    @solution = Solution.find(params[:id])
    Vote.create(votable: @solution, user: current_user)
    redirect_to solutions_path
  end

  def collaborate
    @solution = Solution.find(params[:id])
    Collaboration.create(solution: @solution, user: current_user)

    redirect_to solutions_path
  end

  private

  def set_params
    params.require(:solution).permit(:title, :description)
  end
end
