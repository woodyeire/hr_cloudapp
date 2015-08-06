class RequestsController < InheritedResources::Base
    before_filter :authenticate_user!
    
    def show
      @request = Request.includes(:user).find(params[:id])
    end

    def request_params
      params.require(:request).permit(:employee_name, :date_begin, :date_end, :leave_type, :user_id, :id)
    end
    
end
