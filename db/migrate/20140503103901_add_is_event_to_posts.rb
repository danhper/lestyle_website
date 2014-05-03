class AddIsEventToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :is_event, :boolean, default: false
    add_index :posts, :is_event
  end
end
