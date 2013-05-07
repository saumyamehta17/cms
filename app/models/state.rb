class State < ActiveRecord::Base
  belongs_to :address
  belongs_to :country
  has_many :country
  has_many :cities , :through => :country
  attr_accessible :name
end
