class CreateFoodLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :food_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :fat
      t.integer :carbs
      t.integer :protein
      t.integer :calories

      t.timestamps
    end
  end
end
