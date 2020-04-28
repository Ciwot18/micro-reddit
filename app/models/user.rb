class User < ApplicationRecord
    has_many :post
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :username, uniqueness: true
end