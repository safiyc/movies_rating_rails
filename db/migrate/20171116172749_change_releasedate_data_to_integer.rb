class ChangeReleasedateDataToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :movies, :release_date, 'integer USING CAST(release_date AS integer)'
  end
end
