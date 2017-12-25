class DropManyTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :children
    drop_table :faborite_styles
    drop_table :favorite_patterns
    drop_table :favorite_styles
    drop_table :hate_patterns
    drop_table :teams
    
    
  end
end
