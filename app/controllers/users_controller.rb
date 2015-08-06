class UsersController < ApplicationController
  before_filter :authenticate_user!


  def index
    @users = User.all
  end
  
  def show
    @user = current_user
  end
  
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

    def user_params
      params.require(:user).permit(:f_name, :email, :password,
                                   :password_confirmation, :l_name, :address, :phone, :sex, :start_date, :dept, :role, :salary, :manager, :notes)
    end

end
