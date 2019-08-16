class EducatorsController < ApplicationController

  def index
    educator = Educator.all

    render json: educator.to_json(
      :except => [:created_at, :updated_at, :educator_type, :admin]
    )

  end

  def show
    educator = Educator.find_by(id: params[:id])

    render json: educator.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :educator_rooms => {
          :except => [:created_at, :updated_at],
          :include => {
            :room => {
              :except => [:created_at, :updated_at],
              :include => {
                :educators => {
                  :except => [:created_at, :updated_at]
                }
              }
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

  private
    def educator_params
      params.require(:educator).permit(:username, :password, :first_name, :last_name, :phone, :email, :picture, :educator_type)
    end

end
