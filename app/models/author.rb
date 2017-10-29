class Author < ActiveRecord::Base
	def name
	 name = first_name + " " + last_name 
	end
end
