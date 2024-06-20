class PostsController < ApplicationController
    def index
        @posts = Post.all   
        # debugger
        @user = current_user.id
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

    def like
        debugger
        @post = Post.find(params[:id])
        @post = @user.posts.find(params[:post_id])
        @like = @post.likes.find_by(user: current_user)
    end

    private
    def permit_params
        params.require(:post).permit(:name, :description)
    end
end



