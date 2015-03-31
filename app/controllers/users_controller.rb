class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @lists = current_user.lists
  end

  def new
    @list = List.new
  end


  def create
    @list = current_user.lists.build(list_params)
    
    if @list.save
     redirect_to list_path(@list), notice: "List saved."
    else
      flash[:error] = "Error saving list - please try again."
      render :new
    end
  end

  def update
    if current_user.update_attributes(user_params)
      flash[:notice] = "User information updated"
      redirect_to edit_user_registration_path
    else
      flash[:error] = "Invalid user information"
      redirect_to edit_user_registration_path
    end
  end

  def show
    if params[:id]
      @user = User.find params[:id]
    else
      @user = current_user
    end
  end

  def edit
  end
  
  private

  def user_params
    params.require(:user).permit(:name)
  end
end