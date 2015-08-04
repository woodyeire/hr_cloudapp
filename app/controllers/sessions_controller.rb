class SessionsController < ApplicationController
    
    def create
        @sessions = session.new
    end
    
end
