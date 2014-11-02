class Country < ActiveRecord::Base
	has_many :states
	accepts_nested_attributes_for :states, :allow_destroy => true
end
