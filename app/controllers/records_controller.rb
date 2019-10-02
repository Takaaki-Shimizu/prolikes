class RecordsController < ApplicationController

  def index
    if Record.where(user_id: current_user.id) == nil
      @record = nil
    else
      @record = Record.where(user_id: current_user.id).last
    end
    @records = Record.where(user_id: current_user.id)
    @goal = Goal.where(user_id: current_user.id).last
  end

  def new
    @record = Record.new
  end

  def create
    Record.create(record_params)
    redirect_to "/users/#{request.url[28, 1].to_i}/records"
  end

  def destroy
    records = Record.where(user_id: current_user.id)
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
