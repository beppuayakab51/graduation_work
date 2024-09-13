class SorceryCore < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email,            null: false, index: { unique: true }
      t.string :crypted_password
      t.string :salt

      t.string :reset_password_token
      t.datetime :reset_password_token_expires_at
      t.datetime :reset_password_email_sent_at
      t.integer :access_count_to_reset_password_page, default: 0

      t.string :reset_unconfirmed_email
      t.string :reset_email_token
      t.datetime :reset_email_token_expires_at
      t.datetime :reset_email_email_sent_at

      t.timestamps                null: false
    end
  end
end
