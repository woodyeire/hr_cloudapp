class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  before_filter do
  resource = controller_name.singularize.to_sym
  method = "#{resource}_params"
  params[resource] &&= send(method) if respond_to?(method, true)
end

# Defining a variable which allows us to call the users full name.

  def employee_name
    f_name + " " + l_name
  end

# The below statement is ensuring that if the user is NOT logged in, no matter where in the application it will reroute to the login page.
# If they are logged in, it will default to the routes.rb file and the root to: that is set in there.

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_path, :notice => 'You are not signed in!'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end

end
