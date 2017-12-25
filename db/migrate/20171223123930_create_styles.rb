class CreateStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :styles do |t|
      t.string :name
      t.string :sex
      t.string :image_style

      t.timestamps
    end
  end
end
