class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :job_applications
  has_many :jobs, through: :favourites

  # The role attribute
  def self.create_table
    super do |t|
      t.string :role, default: "user"
      t.timestamps
    end
  end

  def employer?
    @role == "employer"
  end
end
