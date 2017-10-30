class Author < ActiveRecord::Base
	validates :last_name, presence: true

	def name
	 name = first_name + " " + last_name 
	end
end
