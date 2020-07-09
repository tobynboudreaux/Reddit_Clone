class Group < ApplicationRecord

    has_many :users
    has_many :leaders, through: :users
    has_many :leadees, through: :users


    def self.top_group
        max_num = 0
        self.all.find do |group|
            max_num = group.users.count if group.users.count > max_num
        end
    end

    def self.trending
        yeet = self.all.sort {|a, b| b.users.count <=> a.users.count}
        yeet.take(3)
    end

end
