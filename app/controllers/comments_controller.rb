class CommentsController < ApplicationController
    def new
        @comment = Comment.new
        @comment.post_id = @post.id
    end

    def create
        @comment = Comment.new(comments_params)
        @comment.post_id = params[:post_id]
        @comment.save
        redirect_to post_path(@comment.post)
    end

    def destroy
        fail
    end

    def edit
        @comment = @post.comment
    end

    def update
        @comment = @post.comment
    end

    private
    def comments_params
        params.require(:comment).permit(:username, :cbody)
    end
end
