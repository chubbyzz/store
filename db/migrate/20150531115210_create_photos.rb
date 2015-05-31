class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.boolean :main , false
      t.integer :imageble_id
      t.string :imageble_type
      t.timestamps null: false
    end
    add_index :photos , :imageble_id
  end
end
