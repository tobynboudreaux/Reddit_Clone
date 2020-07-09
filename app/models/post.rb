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

    def tl_dr
            self.content.split.size > 15
    end

    def self.most_popular
        self.all.sort {|a, b| b.likes.count <=> a.likes.count}
    end

    def self.filter_new
        self.all.sort {|a| a.created_at}
    end

    def has_pics?
        if self.img_url.empty?
            false
        else
            true
        end
    end

end
