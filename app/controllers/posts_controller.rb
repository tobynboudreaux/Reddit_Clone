class PostsController < ApplicationController

    def index
        @posts = Post.all 
    end 

    def show 
        @post = Post.find(params[:id])
    end

    def tldr
        @post = Post.find(params[:post_id])
    end

end
