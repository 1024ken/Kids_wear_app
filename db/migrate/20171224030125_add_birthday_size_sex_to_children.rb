class AddBirthdaySizeSexToChildren < ActiveRecord::Migration[5.1]
  def change
    add_column :children, :bitthday, :integer
    add_column :children, :sex, :string
    add_column :children, :size, :integer
  end
end
