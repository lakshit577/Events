class User < ApplicationRecord
#   devise-----------------------------
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    # associations------------------      
    has_many :user_followers , class_name: "Follow" , foreign_key: "follower_id",dependent: :destroy
    has_many :followings , through: :user_followers ,source: :followed

    has_many :user_follows , class_name: "Follow" , foreign_key: "followed_id",dependent: :destroy
    has_many :followers , through: :user_follows ,source: :follower
end