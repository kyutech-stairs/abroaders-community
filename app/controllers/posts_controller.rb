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


            params.require(:post).permit(
              :country_id,
              :stay_id,
              :kind_id,
              :language_id,
              # :image,
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

              # :bookmark_id,
              # :like_id,
    # :comment_impression,
    # :comment_school,
    # :comment_food,
    # :comment_stay,
    # :comment_manner,
    # :comment_social,
    # :comment_advice,
    # :comment_accident,
    # :comment_anxiety
