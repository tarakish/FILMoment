class ActorsController < ApplicationController
  before_action :set_actor, only: %i[show]
  
  def index
    @actors = Actor.all
  end

  def show
    @post = Post.new
    @posts = @actor.posts
  end

  private
  def set_actor
    @actor = Actor.find(params[:id])
  end
end
