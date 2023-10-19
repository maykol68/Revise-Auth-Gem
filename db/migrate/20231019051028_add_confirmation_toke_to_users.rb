class AddConfirmationTokeToUsers < ActiveRecord::Migration[7.1]
  def change
     add_column :users, :confirmation_token, :string
     add_index :users, :confirmation_token, unique: true # This ensures that the confirmation_token is unique for each user.
  end
end
