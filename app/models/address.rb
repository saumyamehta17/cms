class Address < ActiveRecord::Base
  belongs_to :profile
  has_one :country
  has_one :state
  has_one :city
  attr_accessible :addr
end
