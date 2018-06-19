class Day < ApplicationRecord
	has_many :rests
	has_many :notes, through: :rests
	accepts_nested_attributes_for :rests


	
end

