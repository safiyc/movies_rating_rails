class User < ActiveRecord::Base
  has_many :movies, dependent: :destroy
  has_many :reviews
  has_secure_password

  validates :username,
            presence: true,
            length: { minimum: 3 },
            uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 3 }

  def owns_movie?(movie)
    self == movie.user
  end
end
