class City < ActiveRecord::Base
  belongs_to :address
  belongs_to :country
  belongs_to :state
  attr_accessible :name
end
