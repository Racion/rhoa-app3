class CaloriesRegister < ApplicationRecord
  belongs_to :user
  validates :description, presence: true, length: { maximum: 140 }
  validates :date, presence: true
  validates :activityType, presence: true

end
