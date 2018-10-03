class ChangeRanksName < ActiveRecord::Migration[5.2]
  def change
    rename_column :apps, :ranks, :rank
  end
end
