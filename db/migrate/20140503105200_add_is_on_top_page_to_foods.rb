class AddIsOnTopPageToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :is_on_top_page, :boolean, default: false
    add_index :foods, :is_on_top_page
  end
end
