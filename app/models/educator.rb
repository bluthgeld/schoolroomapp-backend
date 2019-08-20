class Educator < User

  has_many :educator_sections
  has_many :sections, through: :educator_sections


  enum educator_type: [:Teacher, :Assistant, :Librarian, :EDay]

  after_initialize do
    if self.new_record?
      self.educator_type ||= :teacher
      self.admin ||= false
    end
  end


end
