class AddColumnToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :state, :integer
  end
end
