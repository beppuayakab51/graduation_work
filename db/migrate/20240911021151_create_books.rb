class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :original_text
      t.text :translated_text
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
