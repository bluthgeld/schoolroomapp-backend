class Announcement < ApplicationRecord

    has_many :messages
    belongs_to :initiator, class_name: "User", foreign_key: "initiator_id"
    belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"

end
