class UsersController < ApplicationController

  def index
    @user = User.order("created_at DESC")
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    render json: @user
  end

  def show
    if params[:firebase_id].present?
      @user = User.find_by_firebase_id(params[:firebase_id])
    else 
      @user = User.find(params[:id])
    end
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    head :no_content, status: :ok
  end
  
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :firebase_id, :profile_pic_url)
    end
end
