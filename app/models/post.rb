class Post < ApplicationRecord
  validates :image, file_size: { less_than: 1.megabytes }
  belongs_to :user
  mount_uploader :image, ImageUploader
end
