class Profile < ApplicationRecord
  validates_presence_of :user, :height, :weight, :age, :gender, :activity_level, :daily_calorie_intake

  belongs_to :user
end
