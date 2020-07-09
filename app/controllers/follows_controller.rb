class FollowsController < ApplicationController
    before_action :find_user
       def create
         @user.followers << User.second
         redirect_to user_path(@user)
       end
    
       private
    
       def find_user
         @user = User.find(params[:user_id])
       end
    
     end