class Job < ApplicationRecord
  belongs_to :user
  has_many :favourites
  has_many :applications
end
