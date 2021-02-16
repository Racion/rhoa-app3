class AddQuantityToCaloriesRegister < ActiveRecord::Migration[6.1]
  def change
    add_column :calories_registers, :quantity, :integer, null: false, default: 0 
  end
end
