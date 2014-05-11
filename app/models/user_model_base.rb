class UserModelBase
	include ActiveModel

	def self.search (string)
		return User.myself(string).first
	end

end
