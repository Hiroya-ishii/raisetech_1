class CommentsController < ApplicationController
  def create
    comment = current_user.comments.build(tweet_id: params[:user_id])
    comment.save
    redirect_to comments_path
 end

 def destroy
   comment = Comment.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
   comment.destroy
   redirect_to comments_path
 end
end
