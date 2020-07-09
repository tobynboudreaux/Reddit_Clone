class Post < ApplicationRecord

    has_many :likes
    belongs_to :user 
    belongs_to :topic

    def self.top_post
        max_num = 0
        self.all.find do |post|
            max_num = post.likes.count if post.likes.count > max_num
        end
    end

end
