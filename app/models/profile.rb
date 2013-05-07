class Profile < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :user
  has_one :address
  attr_accessible :firstname, :lastname, :phoneno, :photo

  has_attached_file :photo , :styles => { :small => "150X150>" }
=======
  attr_accessible :firstname, :lastname, :phone , :photo
  belongs_to :user
 
  # validates :phone , :numericality => true , :if => :user_signed_in?
  has_attached_file :photo , :styles => { :small => "150X150>"}
>>>>>>> fe2516288b2b46312419d7289553e5acec78628c
end
