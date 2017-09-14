# Controller to handle sessions of all users
class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email_id: params[:session][:email_id])
    if @user == User.find_by(password: params[:session][:password])
      log_in @user
      redirect_to category_path
    else
      flash[:danger] = 'Invalid combination of email and password'
      render :new
    end
  end

  def destroy; end
end
