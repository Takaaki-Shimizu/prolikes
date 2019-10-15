class RecordsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    if Record.where(user_id: params[:user_id]) == nil
      @record = nil
    else
      @record = Record.where(user_id: params[:user_id]).last
    end
    @records = Record.where(user_id: params[:user_id])
    @goal = Goal.where(user_id: params[:user_id]).last
  end

  def new
    @record = Record.new
  end

  def create
    @user = User.find(params[:user_id])
    Record.create(record_params)
    redirect_to "/users/#{@user.id}/records"
  end

  def destroy
    records = Record.where(user_id: params[:user_id])
    records.destroy_all
    redirect_to action: :index
  end

  private
  def record_params
    params.require(:record).permit(:day_hour).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
