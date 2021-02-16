class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :calories_registers

  def find_dates_between(start_date, end_date)
      self.calories_registers.where('date BETWEEN ? and ?', start_date, end_date)
  end
end
