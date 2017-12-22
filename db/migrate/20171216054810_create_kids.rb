class CreateKids < ActiveRecord::Migration[5.1]
  def change
    create_table :kids do |t|

      t.timestamps
    end
  end
end
