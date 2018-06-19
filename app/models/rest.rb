class Rest < ApplicationRecord
	belongs_to :day
	has_many :notes, :dependent => :destroy
	accepts_nested_attributes_for :notes

	def self.created_since(time)
	  if time.present?
	    where("rests.created_at > ?", time)
	  else
	    all
	  end
	end
end
