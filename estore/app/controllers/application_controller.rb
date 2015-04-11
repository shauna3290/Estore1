class ApplicationController < ActionController::Base
  protect_from_forgery
  include ApplicationHelper
  helper_method :current_user

 before_filter :authorise, :only => [:edit, :delete]

 
 helper_method:admin?
 protected
	

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
helper_method :current_user

		def authorise
        unless signed_in?
		store_location
         #  :notice => "Please sign in to access this page."
           redirect_to signin_path
		  
        end
  end
  

  def admin?
	
   current_user[:name] =='admin'
	end
	end
  
   def store_location
      session[:return_to] = request.fullpath
   end




