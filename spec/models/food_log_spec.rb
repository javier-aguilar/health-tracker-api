require 'rails_helper'

RSpec.describe FoodLog, type: :model do
  describe 'validations' do
    it {should validate_presence_of :fat}
    it {should validate_presence_of :carbs}
    it {should validate_presence_of :protein}
    it {should validate_presence_of :calories}
  end

  describe 'relationships' do
    it {should belong_to :user}
  end

  describe "attributes" do
    foodLog = FactoryBot.create :food_log

    it "is valid with valid attributes" do
      expect(foodLog).to be_valid
    end
  end
end
