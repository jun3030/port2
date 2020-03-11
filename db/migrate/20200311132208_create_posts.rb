class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.text :title
      t.string :url
      t.string :posts_image
      t.string :video
      t.string :from_mypage_data
      t.boolean :public_article
      t.string :article_kind
      t.string :activity_area
      t.string :course_of_action
      t.string :activity_day
      t.string :recruitment_gender
      t.integer :recruitment_age
      t.string :recruitment_part
      t.string :demosound
      t.string :band_genre
      t.integer :post_age
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
