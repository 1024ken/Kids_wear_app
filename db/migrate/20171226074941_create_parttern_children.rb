class CreatePartternChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :parttern_children do |t|
      t.integer :child_id
      t.integer :parttern_id

      t.timestamps
    end
  end
end
