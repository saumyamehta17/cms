class Country < ActiveRecord::Base
  belongs_to :address
  has_many :states
  has_many :cities , :through => :states
  attr_accessible :name
end
