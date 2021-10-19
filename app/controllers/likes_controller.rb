class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.create!
    redirect_back fallback_location: @post
  end
end
