class SessionsController < ApplicationController
    
 # Sessions controller was generated to resolve Devise routing errors.
 
 # The below Create method was defined to assist the sign_in function.
    def create
        @sessions = session.new
    end
    
end
