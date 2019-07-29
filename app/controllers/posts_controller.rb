class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def new
        @post = Post.new
        # @post = Post.all
    end

    def show
        @post = Post.find_by(id: params[:id])
        # @country = Country.find_by(id: @post.country_id )
        # @post = Post.all
    end

    def create
        @post = Post.new(permit_params)
        @post.save!
        # redirect_to :show
        redirect_to action: 'show'
    end

    def search
        @post = Post.search(params[:search])
    end

    private
        def permit_params
<<<<<<< HEAD
<<<<<<< HEAD
            params.require(:post).permit(:country_id, :stay_id, :bookmark_id, :kind_id, :user_id, :like_id, :language_id, :image, :video, :region, :school, :school_address, :major, :purpose, :term, :flight_plan, :budget, :language_level, :comment_impression, :comment_school, :comment_food, :comment_stay, :comment_manner, :comment_social, :comment_advice, :comment_accident, :comment_anxiety)
            
=======
            params.require(:posts).permit(:country_id, :stay_id, :bookmark_id, :kind_id, :user_id, :like_id, :language_id, :image, :video, :region, :school, :school_address, 
=======
            params.require(:posts).permit(:country_id, :stay_id, :bookmark_id, :kind_id, :user_id, :like_id, :language_id, :image, :video, :region, :school, :school_address,
>>>>>>> 5397d7a1252ece2106b01ff6907f78d16f3db61e
            :major, :purpose, :term, :flight_plan, :budget, :language_level, :comment_impression,
            :comment_school, :comment_food, :comment_stay, :comment_manner, :comment_social,
            :comment_advice, :comment_accident,:comment_anxiety
            )
>>>>>>> 8ecd54d6dee5b28cb5d7a6e75bc6691f040ae8d5
        end

    end
