# Controller to handle sessions of all users
class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to new_category_path
    else
      flash[:danger] = 'Invalid combination of email and password'
      render new
    end
  end

  def destroy; end
end
