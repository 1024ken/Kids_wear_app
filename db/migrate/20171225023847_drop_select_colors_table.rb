class DropSelectColorsTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :select_colors
  end
end
