class UsersController < ApplicationController
  before_filter :authenticate_user!



  def index
    @users = User.all
  end
  
# the below show method tells Rails to display the currently signed in user upon the Show action. 
# The if statement also allows the users associated requests to be shown within the users routes.

  def show
    @user = current_user
    if @user 
      @request = @user.requests.all
      render action: :show
    end
  end
    
#    @request = Request.find(current_user.user_id)
#    @request = Request.find(@user.user_id)
#    end

  
  
  def new
    @user = User.new
  end

# The create method below passes the appropraite user parameters when creating a new user and automatically signs the user in, displaying a message.

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
  
  # Edits the currently signed in user.

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
                                   :password_confirmation, :l_name, :address, :phone, :sex, :start_date, :dept, :role, :salary, :manager, :notes, :id, :user_id)
    end

end
