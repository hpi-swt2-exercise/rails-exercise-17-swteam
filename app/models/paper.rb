class Paper < ActiveRecord::Base	
	has_and_belongs_to_many :authors	
	validates :title, presence: true
	validates :venue, presence: true
	validates :year, presence: true
	validates_numericality_of :year, :only_integer => true
	scope :created_in, ->(year) {where("year = ?", year) if year.present? }
end
