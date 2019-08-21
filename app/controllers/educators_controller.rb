class EducatorsController < ApplicationController

  def index

    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)

    educator = Educator.find(payload["user_id"])

    render json: educator.to_json(
      :except => [:created_at, :updated_at, :educator_type, :admin]
    )

  end

  def show
    educator = Educator.find_by(id: params[:id])

    render json: educator.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :sections => {
          :except => [:created_at, :updated_at],
          :include => {
            :room => {
              :except => [:id, :created_at, :updated_at]
            },
            :educators => {
              :except => [:created_at, :updated_at]
            },
            :students => {
              :except => [:created_at, :updated_at]
            }
          }
        }
      }
    )
  end

  def ed_students
    educator = Educator.find_by(id: params[:id])

    render json: educator.to_json(
      :only => [:id, :first_name, :last_name],
      :include => {
        :sections => {
          :only => [:id, :name],
          :include => {
            :students => {
              :only => [:id, :first_name, :last_name]
            }
          }
        }
      }
    )
  end


  def create

    new_educator = Educator.create!(educator_params)
    render json: new_educator

  end

  def update

    update_educator = Educator.find_by(id: params[:id])
    update_educator.update(educator_params)
    render json: update_educator

  end

  private
    def educator_params
      params.require(:educator).permit(:username, :password, :first_name, :last_name, :phone, :email, :picture, :educator_type)
    end

end
