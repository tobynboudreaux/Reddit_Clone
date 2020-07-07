class Like < ApplicationRecord
    has_many :upvotes, foreign_key: :upvote_id, class_name "Hate"
    has_many :downvotes, foreign_key: :downvote_id, class_name "Hate"
    belongs_to :user
    belongs_to :post

end
