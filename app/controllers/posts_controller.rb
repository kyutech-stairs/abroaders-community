class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :signed_in?, except: :index

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
    # @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_url
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(
        :title, 
        :term, 
        :image, 
        :budget, 
        :comment,
        :stay_type_id,
        :country_id,
        :language_id,
        :user_id
      )
    end
end
