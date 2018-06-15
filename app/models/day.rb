class Day < ApplicationRecord
	has_many :rests
	accepts_nested_attributes_for :rests
end
