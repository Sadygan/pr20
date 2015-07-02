class TableSpecific < ActiveRecord::Base
  belongs_to :specific
  has_many :containers, :dependent => :destroy
end
