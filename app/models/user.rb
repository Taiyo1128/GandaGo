class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :vlogs, dependent: :destroy
  has_many :hotels, dependent: :destroy
  has_many :spots, dependent: :destroy
  has_many :restaurants, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :likeas, dependent: :destroy
  has_many :likebs, dependent: :destroy
  has_many :likecs, dependent: :destroy
  has_many :liked_vlogs, through: :likes, source: :vlog
  has_many :likead_hotels, through: :likeas, source: :hotel
  has_many :likebd_spots, through: :likebs, source: :spot
  has_many :likecd_restaurants, through: :likecs, source: :restaurant

  def already_liked?(vlog)
    self.likes.exists?(vlog_id: vlog.id)
  end

  def already_likead?(hotel)
    self.likeas.exists?(hotel_id: hotel.id)
  end

  def already_likebd?(spot)
    self.likebs.exists?(spot_id: spot.id)
  end

  def already_likecd?(restaurant)
    self.likecs.exists?(restaurant_id: restaurant.id)
  end
end
