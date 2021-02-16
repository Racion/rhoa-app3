class CaloriesRegistersController < ApplicationController
  before_action :authenticate_user!
  def new
    @calories_register = CaloriesRegister.new
  end

  def edit
   @calories_register = current_user.calories_registers.find(params[:id])
  end

  def show; end

  def index
    @calories_registers = CaloriesRegister.where(user_id: current_user.id)
  end

  def create
    @calories_register = current_user.calories_registers.new(calories_register_params)
    if @calories_register.save
      flash[:success] = 'Calories Register Created'
      redirect_to root_path 
    else
      flash.now[:danger] = 'Invalid data'
      redirect_to 'new'
    end
  end

  def update
   @calories_register = CaloriesRegister.find(params[:id])
   if @calories_register.update(calories_register_params)
    flash[:success] = 'Calories register updated'
    redirect_to root_path
   else
    render 'edit'
   end
  end

  def destroy
    current_user.calories_registers.find(params[:id]).destroy
    flash[:success] = 'Calories Register Deleted'
    redirect_to root_path
  end

  private

  def calories_register_params
    params.require(:calories_register).permit(:description, :quantity, :activityType, :date, :user_id)
  end
end
