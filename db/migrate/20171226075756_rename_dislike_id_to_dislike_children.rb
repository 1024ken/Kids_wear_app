class RenameDislikeIdToDislikeChildren < ActiveRecord::Migration[5.1]
  def change
    rename_column :dislike_children, :dislike__id, :dislike_id
  end
end
