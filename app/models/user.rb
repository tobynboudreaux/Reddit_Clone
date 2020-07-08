class User < ApplicationRecord
    has_secure_password

    has_many :likes
    has_many :posts
    has_many :topics, through: :posts
    belongs_to :group

    has_many :leaders, foreign_key: :leader_id, class_name: "Lead"
    has_many :leadees, through: :leaders

    has_many :leadees, foreign_key: :leadee_id, class_name: "Lead"
    has_many :leaders, through: :leadees

end
