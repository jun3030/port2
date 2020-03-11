class User < ApplicationRecord
  
  mount_uploader :image, ImageUploader
  
  has_many :posts, dependent: :destroy
  has_many :urls, dependent: :destroy
  
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :footprints, dependent: :destroy
  has_many :favorite_folders, class_name: 'FavoriteFolder', dependent: :destroy
  
  before_save { self.email = email.downcase }

  validates :name,  presence: true, length: { maximum: 15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, on: :create, length: { maximum: 100 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true    
  has_secure_password
  validates :password, presence: true, on: :create, length: { minimum: 6 }
  
  
  validates :prefecture, presence: true, on: :update_profile
  validates :responsible_part, presence: true, on: :update_profile
  validates :age, presence: true, on: :update_profile
  validates :sex, presence: true, on: :update_profile
  validates :self_introduction, length: { maximum: 15000 }, presence: true, on: :update_profile
  validates :genre, presence: true, on: :update_profile
  
  validates :first_token, presence: true, on: :upload_instagram
  validates :app_id, presence: true, on: :upload_instagram
  validates :app_secret, presence: true, on: :upload_instagram
  validates :media_count, presence: true, on: :upload_instagram
 
 
  
  enum prefecture:{
     北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
     茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
     新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
     岐阜県:21,静岡県:22,愛知県:23,三重県:24,
     滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
     鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
     徳島県:36,香川県:37,愛媛県:38,高知県:39,
     福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46, 
     沖縄県:47
   }
   
   enum responsible_part: {
     
     ボーカル:1,ギター:2,ベース:3,ピアノ・キーボード:4,ドラム:5,パーカッション:6,
     管楽器:7,弦楽器:8,作詞作曲・アレンシャー:9,DJ:10,ダンサー:11,その他:12
   }
   
   enum genre: {
     ポップス:1,ロック:2,ハードロック・ヘヴィメタル:3,パンク・メロコア:4,ハードコア:5,スラッシュメタル・デスメタル:6,
     ビジュアル系:7,ファンク・ブルース:8,ジャズ・フュージョン:9,カントリー・フォーク:10,スカ・ロカビリー:11,ソウル:12,
     ゴスペル・アカペラ:13,ボサノバ・ラテン:14,クラシック:15,ヒップホップ・レゲエ:16,ハウス・テクノ:17,アニソン・ボカロ:18,
     他:19
   }
   
end
