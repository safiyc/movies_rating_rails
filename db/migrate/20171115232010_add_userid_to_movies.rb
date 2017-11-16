class AddUseridToMovies < ActiveRecord::Migration[5.1]
  def change
    # add_reference(:movies, :user_id, foreign_key: true, index: true)
  end
end

# https://www.codementor.io/danielchinedu/building-a-basic-hacker-news-clone-with-rails-5-4gr4hrbis
