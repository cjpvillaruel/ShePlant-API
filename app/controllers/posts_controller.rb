class PostsController < ApplicationController
  def index
    if  params[:pledge_id].present? && params[:user_id].present?
      @post = Post.order("created_at DESC").where(pledge_id: params[:pledge_id], user_id: params[:user_id])
    elsif  params[:pledge_id].present?
      @post = Post.order("created_at DESC").where(pledge_id: params[:pledge_id])
    else
      @post = Post.order("created_at DESC")
    end
    render json: @post, include:{
      :user => { :only =>[:first_name, :last_name]}
  }
  end

  def create
    @post = Post.create(post_params)
    render json: @post, include:{
      :user => { :only =>[:first_name, :last_name]}
    }
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    render json: @post
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    head :no_content, status: :ok
  end
  
  private
    def post_params
      params.require(:post).permit(:content, :user_id, :pledge_id)
    end
end
