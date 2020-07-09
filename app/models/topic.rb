class Topic < ApplicationRecord

    has_many :posts
    has_many :users, through: :posts

    def self.top_topic
        max_num = 0
        self.all.find do |topic|
            max_num = topic.posts.count if topic.posts.count > max_num
        end
    end

    def self.trending
        yeet = self.all.sort {|a, b| b.posts.count <=> a.posts.count}
        yeet.take(3)
    end

    def self.ordered
        yeet = self.all.sort {|a, b| b.posts.count <=> a.posts.count}
    end

end
