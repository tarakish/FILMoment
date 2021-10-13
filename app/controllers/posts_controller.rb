class PostsController < ApplicationController
  def create
    @actor = Actor.find(params[:actor_id])
    @post = @actor.posts.build(post_params)
    if @post.save
      redirect_to actor_path(@actor), success: '想いを追加しました'
    else
      flash.now[:danger] = 'ごめんなさい、想いを追加出来ませんでした'
      render actor_path(@actor)
    end
  end

  private
  def post_params
    params.require(:post).permit(:film_title, :scene, :author)
  end
end
