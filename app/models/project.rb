class Project < ActiveRecord::Base
	has_many :specifics, dependent: :destroy
	has_many :containers, dependent: :destroy
	accepts_nested_attributes_for :specifics
	accepts_nested_attributes_for :containers
	validates :address, presence: true, length: { minimum: 5 }
end
