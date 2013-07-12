class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :user_id, :null => false
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :versions, :user_id
  end
end
