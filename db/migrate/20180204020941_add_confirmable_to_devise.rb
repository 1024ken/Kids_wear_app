class AddConfirmableToDevise < ActiveRecord::Migration[5.1]
  def up
    add_column :customers, :confirmation_token, :string
    add_column :customers, :confirmed_at, :datetime
    add_column :customers, :confirmation_sent_at, :datetime
    add_column :customers, :unconfirmed_email, :string
    add_index :customers, :confirmation_token, unique: true
    # User.reset_column_information # Need for some types of updates, but not for update_all.

    execute("UPDATE customers SET confirmed_at = NOW()")
  end

  def down
    remove_columns :customers, :confirmation_token, :confirmed_at, :confirmation_sent_at
    remove_columns :customers, :unconfirmed_email # Only if using reconfirmable
    remove_columns :customers, :confirmation_token, unique: true
  end
end
