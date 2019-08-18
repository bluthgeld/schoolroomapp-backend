class User < ApplicationRecord

  has_secure_password

  has_many :messages
  has_many :sender_relationships, class_name: "Announcement", foreign_key: "initiator_id"
  has_many :receiver_relationships, class_name: "Announcement", foreign_key: "receiver_id"

end
