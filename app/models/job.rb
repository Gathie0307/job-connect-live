class Job < ApplicationRecord
  belongs_to :user
  has_many :favourites
  has_many :job_applications
end
