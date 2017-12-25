class CreatePartterns < ActiveRecord::Migration[5.1]
  def change
    create_table :partterns do |t|
      t.string :name
      t.string :image_parttern
      t.string :sex
      t.timestamps
    end
  end
end
