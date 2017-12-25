class DeleteContentColoridToChildren < ActiveRecord::Migration[5.1]
  def change
    remove_column :children, :content
    remove_column :children, :color_id
  end
end
