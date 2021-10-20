class PostsController < ApplicationController
  def index
    @posts = Post.includes(:likes,:actor).sort {|a,b| b.likes.size <=> a.likes.size}
  end
  
  def create
    @actor = Actor.find(params[:actor_id])
    @post = @actor.posts.build(post_params)
    @post.author = '匿名希望' if @post.author.blank?
    if @post.save
      redirect_to actor_path(@actor), success: '投稿ありがとう。想いは受け取った！'
    else
      redirect_to actor_path(@actor), danger: 'ごめん！追加出来なかった！'
    end
  end

  private
  def post_params
    params.require(:post).permit(:film_title, :scene, :author)
  end
end
