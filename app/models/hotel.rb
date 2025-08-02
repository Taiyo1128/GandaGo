class Hotel < ApplicationRecord
  has_many :likeas, dependent: :destroy
  has_many :likead_users, through: :likeas, source: :user
end
