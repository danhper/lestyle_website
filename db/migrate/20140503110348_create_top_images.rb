class CreateTopImages < ActiveRecord::Migration
  def change
    create_table :top_images do |t|
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
