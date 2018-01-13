class AddUserIdToChild < ActiveRecord::Migration[5.1]
  def change
    add_column :children, :user_id, :integer
  end
end
