class Pitch::CommentsController < ApplicationController
  # problems/:problem_id/solutions/:solution_id/pitches/:pitch_id/comment
  def create
    @problem = Problem.find(params[:problem_id])
    @solution = Solution.find(params[:solution_id])
    @pitch = Pitch.find(params[:pitch_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.commentable = @pitch
    if @comment.save
      redirect_to pitch_path(@pitch, anchor: "comment-#{@comment.id}")
    else 
      render "pitches/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
  
end
