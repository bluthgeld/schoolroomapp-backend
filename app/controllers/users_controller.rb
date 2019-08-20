class UsersController < ApplicationController
  def index

    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)

    user = User.find(payload["user_id"])

    render json: user.to_json(
      :except => [:created_at, :updated_at]
    )
  end
end
