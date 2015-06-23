class Project < ActiveRecord::Base
	has_many :specifics, :dependent => :destroy
	accepts_nested_attributes_for :specifics
	validates :name, presence: true, length: { minimum: 5 }
end
