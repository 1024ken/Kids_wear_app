class RenameQuestionsToChildren < ActiveRecord::Migration[5.1]
  def change
    rename_table :questions, :children
  end
end
