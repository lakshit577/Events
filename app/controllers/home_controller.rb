class HomeController < ApplicationController
    before_action :authenticate_user!, except: :index

# index
    def index
        if user_signed_in? 
            # debugger
            redirect_to user_path(current_user)
        else
            render 
        end 
    end

# show
    def show 
    end 

# update
    def update 

    end 

# edit
    def edit 

    end 

# delete
    def destroy 

    end 
end