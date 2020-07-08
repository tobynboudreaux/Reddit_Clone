class Group < ApplicationRecord

    has_many :users
    has_many :leaders, through: :users
    has_many :leadees, through: :users

end
