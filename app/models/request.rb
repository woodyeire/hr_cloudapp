class Request < ActiveRecord::Base
    belongs_to :user
#    default_scope -> { order(created_at: :desc) }
#    validates :id, presence: true
    validates :user_id, presence: true
 
end
