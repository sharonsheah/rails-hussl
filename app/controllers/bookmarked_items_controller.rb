class BookmarkedItemsController < ApplicationController
  def index
    @user = current_user
    @bookmarked_problems = @user.bookmarked_problems
    @bookmarked_solutions = @user.bookmarked_solutions
  end

  def destroy
    @problem = Problem.find(params[:id])
    @solution = Solution.find(params[:id])
    @bookmark = Bookmark.where(bookmarked_id: @problem || @solution, user_id: current_user.id)
    @bookmark.first.destroy
    redirect_to user_bookmarked_items_path(current_user)
  end
end
