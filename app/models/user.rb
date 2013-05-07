class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  # attr_accessible :title, :body

  # validates :username, :presence => true
  has_many :pages
<<<<<<< HEAD
  has_one :profile
  
=======
  has_one :profile 
 

>>>>>>> fe2516288b2b46312419d7289553e5acec78628c
  after_create :profile_intialize

  def profile_intialize
    create_profile
  end
<<<<<<< HEAD
=======

>>>>>>> fe2516288b2b46312419d7289553e5acec78628c
end
