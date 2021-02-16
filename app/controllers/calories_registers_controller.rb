class CaloriesRegistersController < ApplicationController
  before_action :authenticate_user!
  def new
    @calories_register = CaloriesRegister.new
  end

  def edit
  end

  def show
  end

  def index
    @calories_registers = CaloriesRegister.where(user_id: current_user.id)
  end

  def create 
    @calories_register = current_user.calories_registers.build(calories_register_params)
    if @calories_register.save
      redirect_to 'new'
    else
      redirect_to 'new'
    end
  end

  private
  def calories_register_params
    params.require(:calories_register).permit(:description, :quantity, :activityType, :date, :user_id)
  end
end
