class CreateFavoritePatterns < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_patterns do |t|
      t.string :name

      t.timestamps
    end
  end
end
