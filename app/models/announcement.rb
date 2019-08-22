class Announcement < ApplicationRecord
    validates :student_id, presence: true
    validates :subject, presence: true
    validates :body, presence: true

    has_many :messages
    belongs_to :initiator, class_name: "User"
    belongs_to :receiver, class_name: "User"

end
