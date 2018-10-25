class CreateRules < ActiveRecord::Migration[5.2]
  def change
    create_table :rules do |t|
      t.string :title
      t.integer :folder_id
      t.integer :property_id
      t.integer :condition_id
      t.string :value
      t.integer :action_id

      t.timestamps
    end
  end
end
