class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def set_token(user)
    JsonWebToken.encode({user_id: user.id}, (24).hours.from_now.to_i)
  end

  def get_current_user
    user = nil
    if request.headers['Authorization']
      encoded_token = request.headers['Authorization'].split(' ')[1]
      token = JsonWebToken.decode_http_token(encoded_token)
      user = User.find(token["data"]["user_id"])
    end
  end
end
