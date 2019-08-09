class Room < ApplicationRecord

  has_many :student_rooms
  has_many :students, through: :student_rooms
  has_many :educator_rooms
  has_many :educators, through: :educator_rooms
  
  enum room_type: [:classroom, :gym, :music, :library, :art]

  after_initialize do
    if self.new_record?
      self.room_type ||= :classroom
    end
  end

end
