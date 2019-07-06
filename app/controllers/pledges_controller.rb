class PledgesController < ApplicationController
  def index
    @pledge = Pledge.order("created_at DESC")
    render json: @pledge
  end

  def create
    @pledge = Pledge.create(pledge_params)
    render json: @pledge
  end

  def update
    @pledge = Pledge.find(params[:id])
    @pledge.update_attributes(pledge_params)
    render json: @pledge
  end

  def show
    @pledge = Pledge.find(params[:id])
    render json: @pledge
  end

  def destroy
    @pledge = Pledge.find(params[:id])
    @pledge.destroy
    head :no_content, status: :ok
  end
  
  private
    def pledge_params
      params.require(:pledge).permit(:title, :description, :duration)
    end
end
