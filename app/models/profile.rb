class Profile < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :phone , :photo
  belongs_to :user
 
  # validates :phone , :numericality => true , :if => :user_signed_in?
  has_attached_file :photo , :styles => { :small => "150X150>"}
end
