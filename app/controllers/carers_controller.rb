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
            :sections => {
              :except => [:created_at, :updated_at],
              :include => {
                :room => {},
                :educators => {}
              }
            },
            :student_carers => {
              :except => [:created_at, :updated_at],
              :include => {
                :carer => {}
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


  def update

    update_carer = Carer.find_by(id: params[:id])
    update_carer.update(carer_params)
    render json: update_carer

  end


  private
    def carer_params
      params.require(:carer).permit(:username, :password, :first_name, :last_name, :phone, :email, :picture)

    end
end
