class StudentCarer < ApplicationRecord

  belongs_to :student
  belongs_to :carer

  enum fam: [:Parent, :Nanny, :EsteemedElder, :Sibling]

  after_initialize do
    if self.new_record?
      self.fam ||= :parnt
    end
  end
end
