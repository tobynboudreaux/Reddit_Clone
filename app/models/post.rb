class Post < ApplicationRecord

    has_many :likes
    belongs_to :user 
    belongs_to :topic

    validates :title, presence: true
    validates :content, presence: true

    def self.top_post
        post = self.all.sort {|a, b| b.likes.count <=> a.likes.count}
        post.take(1)
    end

    def tl_dr
            self.content.split.size > 15
    end

    def self.most_popular
        post = self.all.sort {|a, b| b.likes.count <=> a.likes.count}
        post.take(3)
    end

    def self.filter_new
        post = self.all.sort {|a| a.created_at}
        post.take(3)
    end

    def has_pics?
        if self.img_url.empty?
            false
        else
            true
        end
    end


end
