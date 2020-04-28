class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)
        redirect_to posts_path(@post)
    end

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to posts_path(@post)
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path(@post)
    end

    private
    def post_params
        params.require(:post).permit(:username, :title, :body)
    end
end