class PostsController < ApplicationController
    def show 
        @post = Post.all
    end

    def create
        @post = Post.new(permit_params)
        @post.save!
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


