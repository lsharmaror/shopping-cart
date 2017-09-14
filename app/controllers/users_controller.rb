# Controller to create, edit and delete users
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'You signed up successfully'
      flash[:color] = 'Valid'
      redirect_to root_path && return
    else
      flash[:notice] = 'Form is invalid'
      flash[:color] = 'Invalid'
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email_id, :password, :address,
                                 :password_confirmation, :phone_no, :zipcode)
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to action: 'show', id: @user
    else
      @users = User.all
      render action: 'edit'
    end
  end
end
