class AuthController < ApplicationController
  def create

    @user = Carer.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: {
        user: @user,
        authenticated: true
      }

    else
      render json: {
        message: "INCORRECT! YOU ARE A FRAUD!",
        authenticated: false

      }
    end
  end

  def edcreate

    @user = Educator.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: {
        user: @user,
        authenticated: true
      }

    else
      render json: {
        message: "INCORRECT! YOU ARE A FRAUD!",
        authenticated: false

      }
    end
  end

end
