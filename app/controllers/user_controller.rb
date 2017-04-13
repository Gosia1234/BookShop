class UserController < ApplicationController
    def login
    end
    
    def admin_login
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "Admin Login Successfull!!"
    redirect_to :controller => :sale_items
    end

    def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "You have been successfully logged out!!"
    redirect_to :controller=> :sale_items
    
    end
end
