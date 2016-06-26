class LikesController < ApplicationController
  include LikeHelper

  def create
    comment = Comment.find(params[:comment_id])
    @like = Like.new
    @like.comment_id = comment.id
    @like.user = current_user
    @like.save
    redirect_to dashboard_path
  end

  def destroy
    comment = Comment.find(params[:comment_id])
    current_user.likes.find_by(comment_id: comment.id).delete
    redirect_to dashboard_path
  end
end
