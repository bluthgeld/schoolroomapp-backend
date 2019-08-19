class StudentsController < ApplicationController
  def index
    students = Student.all

    render json: students.to_json(
      :except => [:created_at, :updated_at]
    )

  end

  def show
    student = Student.find_by(id: params[:id])

    render json: student.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :sections => {
          :except => [:created_at, :updated_at],
          :include => {
            :room => {},
            :educators => {}
          }
        },
        :carers => {}
      }
    )

  end

end
