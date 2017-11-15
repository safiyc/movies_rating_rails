class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.column :title, :string
      t.column :description, :string
      t.column :genre, :string
      t.column :release_date, :string

      t.timestamps
    end
  end
end
