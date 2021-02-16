class CreateCaloriesRegisters < ActiveRecord::Migration[6.1]
  def change
    create_table :calories_registers do |t|
      t.string :description, null: false, default: ''
      t.string :activityType, null: false, default: ''
      t.date :date, null: false, default: ''
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
