class RenameAvatarToImage < ActiveRecord::Migration[5.1]
  def change
    rename_column :customers, :avatar, :image
  end
end
