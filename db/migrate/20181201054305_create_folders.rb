class CreateFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :folders do |t|
      t.string :fid
      t.references :storage, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
