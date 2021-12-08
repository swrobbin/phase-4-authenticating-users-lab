class SessionsController < ApplicationController
    def create
        user = User.find(params[:id])
        session[:user_id] ||= user.id
        render json: user
    end

    def destroy
        session.delete :user_id
        head :no_content 
    end
end
