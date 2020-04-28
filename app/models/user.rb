class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, confirmation: true, uniqueness: true
    validates :email_confirmation, presence: true
    validates :username, uniqueness: true
end