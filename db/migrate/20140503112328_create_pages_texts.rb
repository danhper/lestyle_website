class CreatePagesTexts < ActiveRecord::Migration
  def change
    create_table :pages_texts do |t|
      t.string :identifier
      t.text :content

      t.timestamps
    end

    add_index :pages_texts, :identifier
  end
end
