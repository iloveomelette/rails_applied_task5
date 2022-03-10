class Food < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes, source: :user

  validates :name, presence: true
  mount_uploader :image, ImageUploader

  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end
end
