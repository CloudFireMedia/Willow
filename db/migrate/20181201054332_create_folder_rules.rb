class CreateFolderRules < ActiveRecord::Migration[5.2]
  def change
    create_table :folder_rules do |t|
      t.references :folder, foreign_key: true
      t.references :rule, foreign_key: true

      t.timestamps
    end
  end
end
