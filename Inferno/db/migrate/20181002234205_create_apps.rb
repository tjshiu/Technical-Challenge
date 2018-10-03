class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :image
      t.string :link
      t.string :category
      t.integer :ranks
      t.timestamps
    end
  end
end
