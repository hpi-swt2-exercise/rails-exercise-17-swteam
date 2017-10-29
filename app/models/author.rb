class Author < ActiveRecord::Base
	def name
	 name = author_first_name + " " + author_last_name 
	end
end
