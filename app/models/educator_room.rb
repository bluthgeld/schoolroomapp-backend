class EducatorRoom < ApplicationRecord

  belongs_to :educator
  belongs_to :room
  
end
