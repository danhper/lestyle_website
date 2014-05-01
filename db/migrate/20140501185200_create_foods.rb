class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end
