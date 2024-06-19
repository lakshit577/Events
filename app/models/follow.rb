class Follow < ApplicationRecord
    belongs_to :follower, class_name: "User" , dependent: :destroy
    belongs_to :followed , class_name: "User", dependent: :destroy
    
end