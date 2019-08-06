class Room < ApplicationRecord

  enum room_type: [:class, :gym, :music, :library, :art]

  after_initialize do
    if self.new_record?
      self.room_type ||= :class
    end
  end

end
