class Instructor < User

  after_initialize :init

  has_many :users
  has_many :dojos
  def init
    self.is_instructor = true
  end
end
