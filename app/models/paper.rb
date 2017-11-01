class Paper < ActiveRecord::Base
	has_many :authors	
	validates :title, presence: true
	validates :venue, presence: true
	validates :year, presence: true
	validates_numericality_of :year, :only_integer => true
end
