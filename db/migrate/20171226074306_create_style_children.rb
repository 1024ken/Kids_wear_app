class CreateStyleChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :style_children do |t|
      t.integer :child_id
      t.integer :style_id

      t.timestamps
    end
  end
end
