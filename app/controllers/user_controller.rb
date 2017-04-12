class UserController < ApplicationController
    def login
    end
    
    def admin_login
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "Admin login Successful, cart reset !!!"
        redirect_to :controller => :books
    end
    
    def logout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "You have been successfully logged out, cart reset !!!"
        redirect_to :controller => :books
    end
end
