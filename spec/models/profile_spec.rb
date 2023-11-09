require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe 'validations' do
    it {should validate_presence_of :user}
    it {should validate_presence_of :height}
    it {should validate_presence_of :weight}
    it {should validate_presence_of :age}
    it {should validate_presence_of :gender}
    it {should validate_presence_of :activity_level}
  end

  describe 'relationships' do
    it {should belong_to :user}
  end

  describe "attributes" do
    profile = FactoryBot.create :profile

    it "is valid with valid attributes" do
      expect(profile).to be_valid
    end
  end
end


