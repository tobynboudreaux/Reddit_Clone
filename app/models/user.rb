class User < ApplicationRecord
    has_secure_password

    has_many :likes
    has_many :posts
    has_many :topics, through: :posts

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users

    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users

    def self.top_contributer
        max_num = 0
        self.all.find do |user|
            max_num = user.posts.count if user.posts.count > max_num
        end
    end

end
