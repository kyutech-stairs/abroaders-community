class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :signed_in?, except: [:index, :show]

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

  def search
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @results = User.all.where("lower(name) LIKE :search", search: "%#{@parameter}%") 
      # @results = User.joins(:countries).where("countries.mail_addr LIKE ?", "%#{params[:search].downcase}%")
      # @users = User.all.order(id: :asc)
    end  
  end 

  def searchbypost
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase
      
      # @results = Post.joins(:country, :user).where("countries.name LIKE ?", "#{params[:search].downcase}%")
      # @results = Post.joins(:country, :user).where("countries.name or users.name LIKE ?", "#{params[:search].downcase}%")
      @results = Post.joins(:country).where("countries.name LIKE ?", "#{params[:search].downcase}%")
      # @results = Post.joins(:country, :language).where("countries.name LIKE ?", "languages.name LIKE ?" "#{params[:search].downcase}%")
      # @results = Post.joins(:country, :language).where("countries.name LIKE ?", "#{params[:search].downcase}%")("languages.name LIKE ?", "#{params[:search].downcase}%")
     
      
    end  
  end 

  def searchbycountry
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @results = Post.all.where("lower(:country_id) LIKE :search", search: "%#{@parameter}%") 
      # @users = User.all.order(id: :asc)
    end  
  end 

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(
        :title, 
        :image,  
        :school,
        :school_address,
        :comment_school,
        :comment_advice,
        :comment_country,
        :comment_social,
        :stay_type_id,
        :country_id,
        :language_id,
        :user_id,
        :kind_id,
        :term_id,
        :budget_id,
        :major_id
      )
    end
end
