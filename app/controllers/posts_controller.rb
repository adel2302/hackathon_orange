class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def edit
    @post = Post.find(params[:id])
    @categories = Category.all
  end

  def create
    @post = Post.new post_params
    @post.user_id = current_user.id
    @post.save
    redirect_to @post
  end

  def update
    @post = Post.find(params[:id])
    @post.update post_params
    redirect_to @post
  end

  def bygeocode
    @posts = Post.by_geocode params[:query]
    @hash = Gmaps4rails.build_markers(@posts) do |post, marker|
      marker.lat post.user.latitude
      marker.lng post.user.longitude
      marker.infowindow post.title
    end
    render "map"
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :category_id, :picture)
  end
end
