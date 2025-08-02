class Restaurant < ApplicationRecord
  has_many :likecs, dependent: :destroy
  has_many :likecd_users, through: :likecs, source: :user
end
