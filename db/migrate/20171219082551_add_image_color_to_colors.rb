class AddImageColorToColors < ActiveRecord::Migration[5.1]
  def change
    add_column :colors, :image_color, :string
  end
end
