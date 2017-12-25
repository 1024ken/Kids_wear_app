class CreateDislikes < ActiveRecord::Migration[5.1]
  def change
    create_table :dislikes do |t|
      t.string :name
      t.string :sex
      t.string :image_dislike

      t.timestamps
    end
  end
end
