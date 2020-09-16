class ProblemsController < ApplicationController
  after_action :save_previous_url, only: [ :show, :new ]
  def index
    @problems = Problem.all
    @categories = Problem::CATEGORY
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

  def leaderboard
    votes_count = Vote.where(votable_type: "Problem")
            .group(:votable_id)
            .count
    @votes = votes_count.sort_by { |k, v| -v }
  end

  def upvote
    @problem = Problem.find(params[:id])
    Vote.create(votable: @problem, user: current_user)
    redirect_to problems_path
  end

  private

	def set_params
		params.require(:problem).permit(:title, :description, :category)
  end
  
  def save_previous_url
    session[:previous_url] = URI(request.referer || '').path
    @back_url = session[:previous_url]
  end
end
