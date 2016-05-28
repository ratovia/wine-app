class Post < ActiveRecord::Base
  belongs_to :user
  default_scope -> {order(created_at: :desc)}
  validates :user_id,presence: true
  validates :wine,presence: true, length: {maximum: 140}
end