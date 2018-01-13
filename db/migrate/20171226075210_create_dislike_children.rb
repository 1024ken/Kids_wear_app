class CreateDislikeChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :dislike_children do |t|
      t.integer :child_id
      t.integer :dislike_id

      t.timestamps
    end
  end
end
