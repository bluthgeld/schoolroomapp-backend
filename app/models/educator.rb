class Educator < User

  enum educator_type: [:teacher, :assistant, :librarian, :eday]

  after_initialize do
    if self.new_record?
      self.educator_type ||= :teacher
      self.admin ||= false
    end
  end


end
