class Student < ApplicationRecord

  has_many :student_carers
  has_many :carers, through: :student_carers
  has_many :student_rooms
  has_many :rooms, through: :student_rooms

end
