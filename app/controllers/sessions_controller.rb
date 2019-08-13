class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
      flash[:success] = "done"
    else
      redirect_to signup_path
      flash[:danger] = "not done"
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
