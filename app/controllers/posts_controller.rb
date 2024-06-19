class PostsController < ApplicationController
    def index
    end


    def new
        # debugger
        @post = current_user.posts.new
    end


    def create
        @post = current_user.posts.new(permit_params)
        if @post.save
            redirect_to user_path(current_user)#, notice: 'Post was successfully created.'
        else
            render :new
        end
    end

    def destroy
        @post = current_user.posts.new(permit_params)
        
    end

    private
    def permit_params
        params.require(:post).permit(:name, :description)
    end
end