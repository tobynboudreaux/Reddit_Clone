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

    def self.top_contributer
        max_num = 0
        self.all.find do |user|
            max_num = user.posts.count if user.posts.count > max_num
        end
    end

end
