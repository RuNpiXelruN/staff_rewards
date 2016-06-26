module LikeHelper

  def already_liked? comment
    liked_comments = []
    current_user.likes.each do |like|
      liked_comments << like.comment_id
    end
    liked_comments.include?(comment.id) ? true : false
  end

  def like_button comment
    if already_liked?(comment)
      button_to "Unlike", comment_like_path(comment), method: :delete
    else
      button_to "Like", comment_like_path(comment)
    end
  end
end
