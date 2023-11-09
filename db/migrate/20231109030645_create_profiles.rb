class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.float :height
      t.float :weight
      t.integer :age
      t.string :gender
      t.string :activity_level
      t.integer :daily_calorie_intake

      t.timestamps
    end
  end
end
