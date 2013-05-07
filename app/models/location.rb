class Location < ActiveRecord::Base
  belongs_to :profile
  attr_accessible :address
end
