class Lead < ApplicationRecord

    belongs_to :leader, class_name: "User"
    belongs_to :leadee, class_name: "User"
    
end
