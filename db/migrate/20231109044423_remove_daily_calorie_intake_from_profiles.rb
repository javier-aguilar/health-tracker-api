class RemoveDailyCalorieIntakeFromProfiles < ActiveRecord::Migration[7.0]
  def change
    remove_column :profiles, :daily_calorie_intake, :integer
  end
end
