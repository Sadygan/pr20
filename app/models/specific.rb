class Specific < ActiveRecord::Base
	belongs_to :project
	has_many :table_specifics, :dependent => :destroy
	accepts_nested_attributes_for :table_specifics

	validates :name, presence: true, length: { minimum: 5 }
end
