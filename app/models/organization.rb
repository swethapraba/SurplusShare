class Organization < ApplicationRecord
	belongs_to :organizationtype
	validates_presence_of :name
end
