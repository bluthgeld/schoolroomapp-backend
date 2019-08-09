class EducatorsController < ApplicationController

  def index
    educator = Educator.all

    render json: educator.to_json(
      :except => [:created_at, :updated_at, :educator_type, :admin]
    )

  end

end
