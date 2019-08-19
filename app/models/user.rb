class User < ApplicationRecord

  has_secure_password

  has_many :messages
  has_many :initiator_relationships, class_name: "Announcement", foreign_key: "initiator_id"
  has_many :receivers, through: :initiator_relationships
  has_many :receiver_relationships, class_name: "Announcement", foreign_key: "receiver_id"
  has_many :initiators, through: :receiver_relationships

end
