class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  
  layout 'login'
  
  def new
    @user = User.new
  end

  def create
    if (@user = login(params[:email], params[:password]))
      redirect_back_or_to(dashboard_path, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      
      @user = User.new
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_path, notice: 'Logged out!')
  end
end