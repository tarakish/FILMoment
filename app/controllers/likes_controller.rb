class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.create!
    redirect_to actor_path(@post.actor)
  end
end
