class Author < ActiveRecord::Base
	belongs_to :paper
	has_many :papers
	validates :last_name, presence: true

	def name
	 name = first_name + " " + last_name 
	end
end
