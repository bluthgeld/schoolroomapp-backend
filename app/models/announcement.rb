class Announcement < ApplicationRecord

    has_many :messages
    belongs_to :initiator, class_name: "User"
    belongs_to :receiver, class_name: "User"

end
