class Api::V1::SessionsController < ApplicationController

    def create

      @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        # if user is authenticated, generate  jwt and include that jwt in response back to client.  also include user in response.  
        render json: @user
      else
        render json: {
          error: "Invalid credentials"
        }, status: :unauthorized
      end
    end

    def get_current_user
      if logged_in?
        render json: {
            user: user_serializer(current_user)
          }, status: :ok
      else
        render json: {error: "No current user"}
      end
    end
  end
