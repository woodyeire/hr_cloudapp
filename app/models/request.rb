class Request < ActiveRecord::Base
    belongs_to :user
    
    validates :employee_name, presence: true
  
end
