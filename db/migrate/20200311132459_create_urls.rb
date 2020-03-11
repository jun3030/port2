class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.boolean :public_url
      t.string :users_url
      t.string :mypage_image
      t.string :mypage_movie
      t.boolean :select_content_delete
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
