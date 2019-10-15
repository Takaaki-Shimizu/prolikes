class GoalsController < ApplicationController
  def index
    if Goal.where(user_id: params[:user_id]) == nil
      @goal = nil
    else
      @goal = Goal.where(user_id: params[:user_id]).last
    end
  end

  def new
    @goal = Goal.new
  end

  def create
    @user = User.find(params[:user_id])
    Goal.create(goal_params)
    redirect_to "/users/#{@user.id}/records"
  end

  def edit
  end

  def update
  end

  private
  def goal_params
    params.require(:goal).permit(:goal_hour).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
