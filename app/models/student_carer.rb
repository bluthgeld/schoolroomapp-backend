class StudentCarer < ApplicationRecord

  enum fam: [:parnt, :nanny, :elder, :sibling]

  after_initialize do
    if self.new_record?
      self.fam ||= :parnt
    end
  end
end
