class AddImageToChild < ActiveRecord::Migration[5.1]
  def change
    add_column :children, :image, :text
  end
end
