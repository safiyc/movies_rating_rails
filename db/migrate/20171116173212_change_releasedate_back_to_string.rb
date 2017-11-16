class ChangeReleasedateBackToString < ActiveRecord::Migration[5.1]
  def change
    change_column :movies, :release_date, 'varchar USING CAST(release_date AS varchar)'
  end
end
