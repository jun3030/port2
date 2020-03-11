class CreateFavoriteFolders < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_folders do |t|
      t.integer :favorite_user
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
