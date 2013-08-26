class Instructor < User

  after_initialize :init

  has_many :users
  def init
    self.is_instructor = true
  end
end
