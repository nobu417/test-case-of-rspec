# coding: utf-8
class User < ActiveRecord::Base
	# attr_accessible :age, :name, :profile
	
	def hello
		self.name += "でござる"
	end 
end
