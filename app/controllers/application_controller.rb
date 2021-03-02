class ApplicationController < ActionController::API


  def user_serializer(user)
    {
      name: user.name,
      email: user.email,
      id: user.id
    }
  end

  def current_user  ##use different method name?
    @current_user ||= User.find_by(id: decode_token_and_get_user_id)
  end

  def logged_in?
    !!current_user
  end

  def generate_token(payload)
      JWT.decode(request.headers["Authorization"], "beans")[0]["id"] #beans?

end
