class CaloriesRegister < ApplicationRecord
  belongs_to :user
  validates :description, presence: true, length: { maximum: 140 }
  validates :date, presence: true
  validates :activityType, presence: true
  validates :quantity, presence: true, numericality: {greater_than: 0}
  paginates_per 10
end
