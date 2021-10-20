class ActorsController < ApplicationController
  before_action :set_actor, only: %i[show]
  
  def index
    @actors = Actor.all
    @actor = Actor.new
  end

  def show
    @post = Post.new
    @posts = @actor.posts.order(created_at: :desc)
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    @actor.wiki_url = "https://ja.wikipedia.org/wiki/#{@actor.name}"
    if @actor.save
      redirect_to actor_path(@actor.id), success: "あぁ！#{@actor.name}を忘れるなんてどうかしてた。ついでに好きなシーンも追加してくれると嬉しいな。"
    else
      flash.now[:danger] = 'ごめん！追加できなかった！'
      render :new
    end
  end

  private
  def set_actor
    @actor = Actor.find(params[:id])
  end

  def actor_params
    params.require(:actor).permit(:name)
  end
end
