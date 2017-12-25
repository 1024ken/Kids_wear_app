class CreateColorChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :color_children do |t|
      t.integer :color_id
      t.integer :child_id

      t.timestamps
    end
  end
end
