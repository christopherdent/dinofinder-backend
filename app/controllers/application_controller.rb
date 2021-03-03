class ApplicationController < ActionController::API
  
  def user_serializer(user)
    {
      name: user.name,
      email: user.email,
      id: user.id
    }
  end

  def current_user
    begin
      @current_user ||= User.find(decode_token_and_get_user_id)
    rescue
      return nil
    end
  end

  def logged_in?
    !!current_user
  end

  def generate_token(payload)
    JWT.encode(payload, ENV['JWT_TOKEN_SECRET'])
  end

  def decode_token_and_get_user_id
    JWT.decode(request.headers["Authorization"], ENV['JWT_TOKEN_SECRET'])[0]["id"]
  end
end
