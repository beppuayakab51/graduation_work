class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :word, null: false
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
