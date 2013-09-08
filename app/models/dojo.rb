class Dojo < ActiveRecord::Base
	extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  attr_accessible :description, :name, :avatar

  mount_uploader :avatar, AvatarUploader

  belongs_to :instructor
  

  has_many :users

  validates :name, :presence => true
  validates :description, :presence => true
end
