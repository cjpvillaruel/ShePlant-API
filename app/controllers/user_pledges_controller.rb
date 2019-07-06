class UserPledgesController < ApplicationController
  def index
    @user = User.find(params[:id])
    render json: @user.pledges
  end

  def create
    @user = User.find(params[:id])
    
    render json: @user.pledges
  end

  def update
  end

  def show
  end

  def destroy
  end

end
