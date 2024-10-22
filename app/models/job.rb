class Job < ApplicationRecord
  belongs_to :user
  has_many :favourites
  has_many :job_applications

  has_one_attached :photo
  # We are using Cloudinary
  # mount_uploader :image, ImageUploader
end
