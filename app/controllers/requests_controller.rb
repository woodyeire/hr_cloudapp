class RequestsController < InheritedResources::Base
    before_filter :authenticate_user!

    def request_params
      params.require(:request).permit(:employee_name, :date_begin, :date_end, :leave_type, :id)
    end
    
end
