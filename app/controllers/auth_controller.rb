class AuthController < ApplicationController
  # skip_before_action :get_current_user, only: :login

  def login
    user = User.find_by(email: login_params[:email])
    if user && user.authenticate(login_params[:password])
      token = set_token(user)
      render json: {user: user, token: token, message: "Login success"}
    else
      render json: {errors: "Email or password not valid."}
    end
  end

  def logout
    render json: {message: get_current_user ? 'Logout success' : 'Login before logging out!'}
  end

  def get_user
    if request.headers['Authorization']
      user = get_current_user 
      render json: user
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end
end