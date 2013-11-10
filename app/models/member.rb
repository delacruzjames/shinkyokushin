class Member < User

	belongs_to :dojo

	def self.approved_member
		self.where(:is_active => true).all
	end
end