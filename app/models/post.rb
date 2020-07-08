class Post < ApplicationRecord

    has_many :likes
    belongs_to :user 
    belongs_to :topic

end
