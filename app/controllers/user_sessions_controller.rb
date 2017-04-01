class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
 ## skip_before_action :auth,  except: [:destroy]
  skip_before_action :check_app_auth
  
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember])
      redirect_back_or_to(:users, notice: 'Логин принят')
    else
      flash.now[:alert] = 'Неудачная авторизация'
      render action: 'new'
    end    
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Ждём вас снова!')    
  end
end
