class UserPledgesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    render json: @user.pledges
  end

  def create
    @user = User.find(params[:user_id])
    @pledge = Pledge.find(params[:id])
    @user_pledge = UserPledge.create(user: @user, pledge: @pledge)
    render json: @user.pledges
  end

  # GET /user/:user_id/pledges/:pledge_id
  def show
  end

  # GET /user/:user_id/pledges/:pledge_id
  def destroy
    user_pledge = UserPledge.where(user_id: params[:user_id], pledge_id: params[:pledge_id]).first
    user_pledge.destroy
    head :no_content, status: :ok
  end

end
