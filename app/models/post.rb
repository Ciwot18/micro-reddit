class Post < ApplicationRecord
    belongs_to :user
    has_many :comment
    validates :username, presence: true
    validates :title, presence: true, uniqueness: true
end