class RemoveBirthdayToChildren < ActiveRecord::Migration[5.1]
  def change
    remove_column :children, :birthday, :integer
    add_column :children, :birthday, :date 
  end
end
