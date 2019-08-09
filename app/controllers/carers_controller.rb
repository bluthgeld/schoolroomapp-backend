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
              :student_carers => {
                :only => [:fam],
                :include => {
                  :carer => {
                    :only => [:first_name, :last_name, :email, :phone, :picture]
                  }
                }
              }
            }
          }
        }
    )

  end

end
