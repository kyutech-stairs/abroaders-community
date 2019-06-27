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
            params.require(:post).permit(:image, :video)
        end

    end

