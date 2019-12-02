class SessionsController < ApplicationController

  def new
  end
  def create
     session[:ip]=request.remote_ip
     user = User.find_by(ip: session[:ip])
     if user
         log_in user
         redirect_back_or user
     else
         flash.now[:danger]='Invalid IP address'
         render 'new'
     end
  end
 def destroy
    log_out
    redirect_to root_url
  end
end
