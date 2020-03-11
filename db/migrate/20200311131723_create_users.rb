class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :app_id
      t.string :password_digest
      t.text :purpose_of_use
      t.integer :prefecture
      t.integer :responsible_part
      t.integer :genre
      t.integer :age
      t.string :sex
      t.string :favorite_artist
      t.text :self_introduction
      t.string :image
      t.string :first_token
      t.string :third_token
      t.string :app_secret
      t.integer :media_count
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
