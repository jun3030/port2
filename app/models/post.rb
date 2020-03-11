class Post < ApplicationRecord
     
    
    default_scope -> { order(created_at: :desc) } 
    
    belongs_to :user
    mount_uploader :video, VideoUploader
    mount_uploader :posts_image, ImageUploader
    
    validates :title, presence: true
    validates :content, presence: true
    
    validates :activity_area, presence: true, on: :users_create_posts
    validates :recruitment_part, presence: true, on: :users_create_posts
    validates :band_genre, presence: true, on: :users_create_posts
    
    before_save :activity_area
    
   
 
  
end