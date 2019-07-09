class PostsController < ApplicationController
    def new
        @post = Post.new
        @post = Post.all
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

    private
        def permit_params
            params.require(:posts).permit(:country_id, :stay_id, :bookmark_id, :kind_id, :user_id, :like_id, :language_id, :image, :video, :region, :school, :school_address, 
            :major, :purpose, :term, :flight_plan, :budget, :language_level, :comment_impression,
            :comment_school, :comment_food, :comment_stay, :comment_manner, :comment_social,
            :comment_advice, :comment_accident,:comment_anxiety
            )
        end

    end


