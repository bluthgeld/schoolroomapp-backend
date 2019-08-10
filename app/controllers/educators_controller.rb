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
      :except => [:created_at, :updated_at, :comm_pref]

    )

  end

end
