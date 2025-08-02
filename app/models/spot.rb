class Spot < ApplicationRecord
     has_many :likebs, dependent: :destroy
     has_many :likebd_users, through: :likebs, source: :user
end
