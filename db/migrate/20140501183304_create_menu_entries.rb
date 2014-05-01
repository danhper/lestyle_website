class CreateMenuEntries < ActiveRecord::Migration
  def change
    create_table :menu_entries do |t|
      t.string :name
      t.text :description
      t.string :image
      t.belongs_to :category
      t.integer :price

      t.timestamps
    end

    add_index :menu_entries, :category_id
  end
end
