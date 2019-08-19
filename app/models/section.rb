class Section < ApplicationRecord

  has_many :student_sections
  has_many :students, through: :student_sections
  has_many :educator_sections
  has_many :educators, through: :educator_sections
  belongs_to :room

end
