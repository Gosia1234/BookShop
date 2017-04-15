class UserController < ApplicationController
    def login
    end
    
    def admin_login

    puts params[:user][:email]
    puts params[:user][:password]
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "Login Successfull!!"
    redirect_to :controller => :books
    end

    def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "You have been successfully logged out!!"
    redirect_to :controller=> :books
    
    end
    
    def register
    puts params[:user][:email]
    puts params[:user][:password]
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "Registered Successfully!!"
    redirect_to :controller => :books

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
