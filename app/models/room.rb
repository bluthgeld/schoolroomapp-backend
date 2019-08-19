class Room < ApplicationRecord

  has_many :sections

  enum room_type: [:classroom, :gym, :music, :library, :art]

  after_initialize do
    if self.new_record?
      self.room_type ||= :classroom
    end
  end

end
