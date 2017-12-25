class RenameBirthdayToChildren < ActiveRecord::Migration[5.1]
  def change
    rename_column :children, :bitthday, :birthday
  end
end
