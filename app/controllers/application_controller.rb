class ApplicationController < ActionController::Base
  protect_from_forgery
   
  def after_sign_in_path_for(resource)
     pages_path
   end

   def after_sign_up_path_for(resource)
     pages_path
   end
 before_filter :authenticate_user!


end
