class ChangeDatatypeToReleasedate < ActiveRecord::Migration[5.1]
  def up
    change_table :movies do |t|
      t.change :release_date, :string
    end
  end

  def down
    change_table :movies do |t|
      t.change :release_date, :integer
    end
  end
end
