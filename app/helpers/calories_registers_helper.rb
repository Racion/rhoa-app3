module CaloriesRegistersHelper
  def calories_chart_data
    current_user.calories_registers.where('date BETWEEN ? and ?', 30.days.ago, Date.today)
  end
end
