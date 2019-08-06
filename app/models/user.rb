class User < ApplicationRecord

  enum educator_type: [:teacher, :assistant, :librarian, :eday]
  enum carer_type: [:parnt, :nanny, :elder, :sibling]
  enum comm_pref: [:phone, :email, :both]

  after_initialize do
    if self.new_record?
      self.educator_type ||= :teacher
      self.carer_type ||= :parnt
      self.comm_pref ||= :phone
    end
  end

end
