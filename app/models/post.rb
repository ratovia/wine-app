class Post < ActiveRecord::Base
  belongs_to :user
  default_scope -> {order(created_at: :desc)}
  mount_uploader :picture, PictureUploader
  validates :user_id,presence: true
  validates :wine,presence: true, length: {maximum: 140}
  validate :picture_size
  validates :depth,presence: true
  validates :sweetness,presence: true
  private
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
