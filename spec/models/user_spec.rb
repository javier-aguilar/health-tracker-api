require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it {should validate_presence_of :username}
    it {should validate_presence_of :name}
    it {should validate_presence_of :email}
    it {should validate_presence_of :password}
  end

  describe 'relationships' do
    it {should have_one :profile}
    it {should have_one :food_log}
  end

  describe "attributes" do
    user = FactoryBot.create :user

    it "is valid with valid attributes" do
      expect(user).to be_valid
    end
  end
end
