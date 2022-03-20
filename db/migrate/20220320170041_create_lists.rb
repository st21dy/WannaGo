class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.text :list_name
      t.string :image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
