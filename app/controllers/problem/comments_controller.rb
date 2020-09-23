class Problem::CommentsController < ApplicationController
  # problems/:problem_id/comments
  def create
    @problem = Problem.find(params[:problem_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.commentable = @problem
    if @comment.save
      Notification.create(recipient: @problem.user, actor: current_user, action: "commented", notifiable: @problem)
      redirect_to @problem, notice: "Comment posted!"
    else 
      @solutions = @problem.solutions
      render "problems/show"
    end
  end
  
  private

  def comment_params
		params.require(:comment).permit(:content)
  end
end
