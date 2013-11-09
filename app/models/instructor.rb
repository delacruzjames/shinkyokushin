class Instructor < User

  after_initialize :init

  has_many :users

  has_many :dojos
  accepts_nested_attributes_for :dojos


  def sensei
  	"Sensei #{first_name} #{last_name}"
  end

  private

    def init
      self.is_instructor = true
    end

end
