class Hate < ApplicationRecord
    belongs_to :upvote, class_name: "Like"
    belongs_to :downvote, class_name: "Like"
end
