class Post < ApplicationRecord
    #belongs_to :user
    validates :username, presence: true
    validates :title, presence: true, uniqueness: true
end