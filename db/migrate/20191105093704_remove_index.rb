class RemoveIndex < ActiveRecord::Migration[5.2]
  def change
    remove_index :users, name: :index_users_on_reset_password_token
  end
end
