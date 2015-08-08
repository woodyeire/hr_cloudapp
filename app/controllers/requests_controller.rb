class RequestsController < InheritedResources::Base
  # The below before_filter is set across the application to ensure that no pages can be accessed without an authenticated user being logged in.
    before_filter :authenticate_user!
    
  # defining the show method for requests which assists with the association between a User object and a Request object.  
    
    def show
      @request = Request.includes(:user).find(params[:id])
    end
    
  # passing the permitted paramaters for a Request to allow writing to the database.

    def request_params
      params.require(:request).permit(:employee_name, :date_begin, :date_end, :leave_type, :user_id, :id, :status)
    end
    
end
