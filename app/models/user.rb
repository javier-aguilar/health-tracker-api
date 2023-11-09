class User < ApplicationRecord
    validates_presence_of :username, :name, :email, :password
    validates_uniqueness_of :username, :email
    validates_length_of :username, :name, maximum: 150
    validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP

    has_one :profile, dependent: :destroy
    has_many :food_log, dependent: :destroy
end
