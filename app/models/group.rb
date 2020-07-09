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

end
