class Project < ActiveRecord::Base
	has_many :specifics
	validates :name, presence: true, length: { minimum: 5 }
end
