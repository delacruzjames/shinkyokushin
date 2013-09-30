class Instructor < User

  after_initialize :init

  has_many :users

  has_many :dojos
  accepts_nested_attributes_for :dojos


  private

    def init
      self.is_instructor = true
    end

end
