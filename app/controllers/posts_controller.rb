class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :signed_in?, except: [:index, :show]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def index2
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post_attaches = @post.post_attaches.all
  end

  def new
    @post = Post.new
    @post_attach = @post.post_attaches.build
  end

  #def create
   # @post = Post.new(post_params)
    #if @post.save
     # redirect_to root_url
    #else
     # render 'new'
    #end
  #end

  def create
    @post = Post.new(post_params)
 
    respond_to do |format|
      if @post.save
        params[:post_attaches]['avatar'].each do |a|
           @post_attach = @post.post_attaches.create!(:avatar => a)
        end
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render action: 'new' }
      end
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
    end  
  end 

  def searchbypost
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase
      @results = Post.joins(:country, :language, :term, :budget, :kind, :major).where("lower(countries.name) LIKE :search OR 
      lower(languages.name) LIKE :search OR lower(terms.name) LIKE :search OR lower(budgets.name) LIKE :search OR 
      lower(kinds.name) LIKE :search OR lower(majors.name) LIKE :search", search: "#{params[:search].downcase}%").uniq   
      
     
      
    end  
  end 

  def searchbycountry
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @results = Post.all.where("lower(:country_id) LIKE :search", search: "%#{@parameter}%") 
    end  
  end 

  def upload_photos
  end
  
  def upload
      @photo = Photo.new(image: params[:file])
      parsed = Photo.parse_filename(params[:name])
      @photo.title = parsed[:title]
      if @photo.save
        head 200
      end
    end

    def self.parse_filename(filename)
      filename.gsub!(/(.jpg|.png)/, '')
      return nil unless filename =~ /^\w*-(([a-zA-Z])*(_|$))*/
      filename.split('_').join(' ')
      {title: filename}
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
        :major_id,
        {avatars: []},
        post_attaches_attributes: [:id, :post_id, :avatar]
      )
    end
end
