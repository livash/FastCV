class CreateSlidePhotos < ActiveRecord::Migration
  def change
    create_table :slide_photos do |t|
      t.integer :slide_id, :null => false
      t.integer :photo_id, :null => false

      t.timestamps
    end
    add_index :slide_photos, :slide_id
    add_index :slide_photos, :photo_id
  end
end
