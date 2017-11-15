class Movie < ActiveRecord::Base
  belongs_to :user

  validates :title,
            :presence => true,
            uniqueness: { case_sensitive: false }

  validates :description, :genre, :release_date, :presence => true
end
