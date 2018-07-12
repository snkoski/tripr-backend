class User < ApplicationRecord
  has_secure_password
  has_many :user_trips
  has_many :trips, through: :user_trips
  has_many :destinations, through: :trips
  has_many :activities, through: :trips
  validates :email, presence: true, length: { maximum: 255 }
  validates :username, presence: true, length: {maximum: 24 }
  validates :password, presence: true, length: {minimum: 3}
  validates :first_name, presence: true
  validates :last_name, presence: true
end

### uniqueness not working when using heroku
# , uniqueness: { case_sensitive: false }
