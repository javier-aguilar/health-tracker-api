class FoodLog < ApplicationRecord
  validates_presence_of :fat, :carbs, :protein, :calories

  belongs_to :user
end
