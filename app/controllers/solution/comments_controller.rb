class Solution::CommentsController < ApplicationController
  #/problems/:problem_id/solutions/:solution_id/comments

  def create
    @problem = Problem.find(params[:problem_id])
    @solution = Solution.find(params[:solution_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.commentable = @solution
    if @comment.save
      redirect_to solution_path(@solution, anchor: "comment-#{@comment.id}")
    else 
      render "solutions/show"
    end
  end


  private

  def comment_params
		params.require(:comment).permit(:content)
  end
end
