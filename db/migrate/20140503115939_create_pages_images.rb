class CreatePagesImages < ActiveRecord::Migration
  def change
    create_table :pages_images do |t|
      t.string :identifier
      t.string :image

      t.timestamps
    end
  end
end
