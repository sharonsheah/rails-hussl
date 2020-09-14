class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all

  end

  def show
    @
  end

  def new
  end

  def create
  end

   # def leaderboard
    #     @solutions = Solution.order("votes").last(5)
    # end
end
