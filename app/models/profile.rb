class Profile < ApplicationRecord
  validates_presence_of :user, :height, :weight, :age, :gender, :activity_level, :daily_calorie_intake
  validates :age, :weight, :age, comparison: { greater_than: 0 }
  belongs_to :user
end
