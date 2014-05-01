class CreateFoodsHaveCategories < ActiveRecord::Migration
  def change
    create_table :foods_have_categories, id: false do |t|
      t.belongs_to :food
      t.belongs_to :category
    end
    add_index :foods_have_categories, :food_id
    add_index :foods_have_categories, [:food_id, :category_id]
  end
end
