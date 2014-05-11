# coding: utf-8
class User < ActiveRecord::Base
	# attr_accessible :age, :name, :profile

	scope :myself, ->(myname) { where("name = ?", myname ) }
	scope :myage, ->(myage) { where("age = ?", myage ) }

	def hello
		self.name += "でござる"
	end 

end
