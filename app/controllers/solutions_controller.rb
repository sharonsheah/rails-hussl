class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
  end  
end
