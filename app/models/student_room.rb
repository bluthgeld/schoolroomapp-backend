class StudentRoom < ApplicationRecord

  belongs_to :student
  belongs_to :educator
  belongs_to :room

end
