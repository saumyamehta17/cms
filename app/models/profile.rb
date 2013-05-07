class Profile < ActiveRecord::Base
  belongs_to :user
  has_one :address
  attr_accessible :firstname, :lastname, :phoneno, :photo

  has_attached_file :photo , :styles => { :small => "150X150>" }
end
