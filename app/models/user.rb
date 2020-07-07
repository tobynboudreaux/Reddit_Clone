class User < ApplicationRecord
    has_many :members, foreign_key: :member_id, class_name: "Bipolar"
    has_many :owners, through: :members
    has_many :topics
    has_many :posts, through: :topics
    has_many :likes, through: :posts
    has_many :groups
    belongs_to :groups
end
