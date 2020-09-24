class Problem::CommentsController < ApplicationController
  # problems/:problem_id/comments
  def create
    @problem = Problem.find(params[:problem_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.commentable = @problem

    if @comment.save
      @notif = Notification.create(recipient: @problem.user, actor: current_user, action: "commented", notifiable: @problem)
      
      NotificationChannel.broadcast_to(
        @problem.user,
        { notification_body: render_to_string(partial: "shared/notification", locals: { notif: @notif }),
        notification_counter: @problem.user.notifications.unread.count
        }
      )
      
      redirect_to problem_path(@problem, anchor: "comment-#{@comment.id}")
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
