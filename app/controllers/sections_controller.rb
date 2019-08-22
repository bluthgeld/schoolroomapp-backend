class SectionsController < ApplicationController
  def index
    section = Section.all

    render json: section.to_json(
      :except => [:created_at, :updated_at]
    )

  end

  def show
    section = Section.find_by(id: params[:id])

    render json: section.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :room => {},
        :educators => {},
        :students => {
          :include => {
            :carers =>  {}
          }
        }
      }
    )

  end

end
