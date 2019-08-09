class StudentCarer < ApplicationRecord

  belongs_to :student
  belongs_to :carer

  enum fam: [:parnt, :nanny, :elder, :sibling]

  after_initialize do
    if self.new_record?
      self.fam ||= :parnt
    end
  end
end
