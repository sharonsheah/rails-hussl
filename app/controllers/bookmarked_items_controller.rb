class BookmarkedItemsController < ApplicationController
  def index
    @user = current_user
    @bookmarked_problems = @user.bookmarked_problems
    @bookmarked_solutions = @user.bookmarked_solutions
  end

  def bookmarked_problem
    @problem = Problem.find(params[:id])
  end

  def bookmarked_solution
    @solution = Solution.find(params[:id])
  end

  def destroy
    @bookmark = Bookmark.where(bookmarked_id: bookmarked_problem || bookmarked_solution, user_id: current_user.id)
    @bookmark.first.destroy
    redirect_to user_bookmarked_items_path(current_user)
  end
end
