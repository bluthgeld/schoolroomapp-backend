class Carer < User

  enum comm_pref: [:phone, :email, :both]

  after_initialize do
    if self.new_record?
      self.comm_pref ||= :phone
          self.admin ||= false
    end
  end

end
