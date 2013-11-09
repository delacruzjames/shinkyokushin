module StudentHelper

	def active_member?
		current_user.is_active?
	end
end