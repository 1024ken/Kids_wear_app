class AddColumutoQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :name, :string
    add_column :questions, :color_id, :integer
    
  end
end
