class CreateVersionSlides < ActiveRecord::Migration
  def change
    create_table :version_slides do |t|
      t.integer :version_id, :null => false
      t.integer :slide_id, :null => false

      t.timestamps
    end
    add_index :version_slides, :version_id
    add_index :version_slides, :slide_id
  end
end
