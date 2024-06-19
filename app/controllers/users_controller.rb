class UsersController < ApplicationController
    before_action :authorize_user ,only: :show
    before_action :authenticate_user!

    def index
        
        @users  = User.all
    end
    

    private
    def authorize_user
        @user = User.find(params[:id])
        unless @user == current_user
            flash[:alert] = "you are not authorised to view this page"
            redirect_to root_path
        end
    end
end