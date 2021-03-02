class Api::V1::SessionsController < ApplicationController

    def create

      @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        # if user is authenticated, generate  jwt and include that jwt in response back to client.  also include user in response.
        token = generate_token({ id: @user.id })
        resp = {
            user: user_serializer(@user),
            jwt: token
          }
          render json: resp
      else
        resp = {
          error: "Invalid credentials",
          details: @user.errors.full_messages
        }
        render json: resp, status: :unauthorized
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
