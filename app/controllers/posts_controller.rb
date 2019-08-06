class PostsController < ApplicationController
    def new
        @post = Post.new
        #@post = Post.all
    end

    def index
        @post = Post.new
        @post = Post.all
    end

    def show 
        @post = Post.find_by(id: params[:posts])
        # @country = Country.find_by(id: @post.country_id )
        # @post = Post.all
    end
    

    def create
        @post = Post.new(permit_params)
        # @post.save!
        # redirect_to :show
        # redirect_to action: 'show'

        respond_to do |format|
            if @post.save
              format.html { redirect_to @post, notice: 'Post was successfully created.' }
              format.json { render :show, status: :created, location: @post }
            else
              format.html { render :new }
              format.json { render json: @post.errors, status: :unprocessable_entity }
            end
          end
    end

    def search
        @post = Post.search(permit_params[:search])
    end
    private
        def permit_params
            params.require(:posts).permit(
                :country_id, 
                :stay_id, 
                :kind_id, 
                :language_id, 
                :region, 
                :school, 
                :school_address, 
                :major, 
                :purpose, 
                :term, 
                :flight_plan, 
                :budget, 
                :language_level, 
            ).merge(user_id: @current_user.id)
        end
    end



