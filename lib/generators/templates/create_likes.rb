class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :likeable, polymorphic: true
      t.references :author, polymorphic: true
      t.timestamps
    end

    add_index :likes, :likeable_type
    add_index :likes, :likeable_id
    add_index :likes, :author_type
    add_index :likes, :author_id
  end
end
