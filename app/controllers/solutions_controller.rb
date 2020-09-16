class SolutionsController < ApplicationController
  after_action :save_previous_url, only: [ :show, :new ]

  def index
    @solutions = Solution.all
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

    redirect_to problem_path(@problem)
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

  def save_previous_url
    session[:previous_url] = URI(request.referer || '').path
    @back_url = session[:previous_url]
  end
end
