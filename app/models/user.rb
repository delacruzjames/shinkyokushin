class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :full_name, use: [:slugged, :history]
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :dojo_id, :first_name, :last_name, :avatar_profile, :middle_name, :contact_number, :add_line_1, :add_line_2, :add_line_3
  # attr_accessible :title, :body

  mount_uploader :avatar_profile, AvatarUploader
  belongs_to :instructor
  belongs_to :dojo

  def full_name
    "#{first_name} #{last_name}"
  end


  # validates :dojo_id, :presence => true
end
