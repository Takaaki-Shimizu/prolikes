class UsersController < ApplicationController
  def index
    @search = User.ransack(params[:q])
    @users = @search.result
  end

  def show
    @user = User.find(params[:id])
    @name = @user.name
    @posts = Post.where(user_id: @user.id).page(params[:page]).per(5).order("created_at DESC")
  end

  def likes
    @user = User.find_by(id: params[:id])
    @likes = Like.where(user_id: @user.id)
  end
end
