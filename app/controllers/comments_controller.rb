class CommentsController < ApplicationController
    def new
        @comment = Comment.new
        @comment.post_id = @post.id
    end

    def create
        
    end

    def index

    end

    def destroy

    end

    def edit

    end

    def update

    end
end
