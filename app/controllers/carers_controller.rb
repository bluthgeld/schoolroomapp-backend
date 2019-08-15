class CarersController < ApplicationController

  def index
    carers = Carer.all

    render json: carers.to_json(
      :except => [:created_at, :updated_at, :educator_type, :admin]
    )

  end

  def show
    carer = Carer.find_by(id: params[:id])

    render json: carer.to_json(
      :except => [:created_at, :updated_at, :educator_type, :admin],
        :include => {
          :students => {
            :except => [:created_at, :updated_at],
            :include => {
              :student_rooms => {
                :except => [:id, :student_id, :created_at, :updated_at],
                :include => {
                  :room => {
                    :except => [:created_at, :updated_at],
                    :include => {
                        :educators => {
                          :only => [:first_name, :last_name, :picture, :educator_type]
                        }
                    }
                  }
                }
              },
              :student_carers => {
                :only => [:fam],
                :include => {
                  :carer => {
                    :only => [:id, :first_name, :last_name, :email, :phone, :picture]
                  }
                }
              }
            }
          }
        }
    )

  end

  def create

    new_carer = Carer.create!(carer_params)
    render json: new_carer

  end

  private
    def carer_params
      params.require(:carer).permit(:username, :password, :first_name, :last_name, :phone, :email, :picture)

    end
end
