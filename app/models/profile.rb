class Profile < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :phone , :photo
  belongs_to :user
 
  validates :phone , :numericality => true
  has_attached_file :photo
end
