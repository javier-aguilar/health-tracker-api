class Profile < ApplicationRecord
  validates_presence_of :user, :height, :weight, :age, :gender, :activity_level
  validates :age, :weight, :age, comparison: { greater_than: 0 }
  belongs_to :user
end
