class Dojo < ActiveRecord::Base
  attr_accessible :description, :name, :avatar

  mount_uploader :avatar, AvatarUploader

  belongs_to :instructor

  has_many :users

  validates :name, :presence => true
  validates :description, :presence => true
end
