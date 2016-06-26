class CommentsController < ApplicationController


  def create
    @user = current_user
    @comment = @user.comments.build(comment_params)
    if @comment.save
      redirect_to dashboard_path
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
