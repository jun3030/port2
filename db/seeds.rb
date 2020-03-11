User.create!(name: "Admin User",
             email: "admin@email.com",
             password: "password",
             password_confirmation: "password",
             age: 20,
             sex: "男",
             purpose_of_use: "音楽好きと繋がりたい",
             favorite_artist: "yui",
             prefecture: "北海道",
             genre: 8,
             responsible_part: "ギター",
             image: File.open("./public/user_images/default.png"),
             self_introduction: "よろしくお願いします",
             admin: true)

User.create!(name: "Sample User1",
             email: "sample1@email.com",
             password: "password",
             password_confirmation: "password",
             age: 20,
             sex: "男",
             purpose_of_use: "音楽好きと繋がりたい",
             favorite_artist: "yui",
             prefecture: "北海道",
             genre: 8,
             responsible_part: "ギター",
             self_introduction: "よろしくお願いします",
             image: File.open("./public/user_images/default.png"))
             

User.create!(name: "Sample User2",
             email: "sample2@email.com",
             password: "password",
             password_confirmation: "password",
             age: 23,
             sex: "女",
             purpose_of_use: "音楽好きと繋がりたい",
             favorite_artist: "フラフラ",
             prefecture: "京都府",
             genre: 8,
             responsible_part: "ドラム",
             self_introduction: "よろしくお願いします",
             image: File.open("./public/user_images/default.png"))
             
User.create!(name: "Sample User3",
             email: "sample3@email.com",
             password: "password",
             password_confirmation: "password",
             age: 27,
             sex: "男",
             purpose_of_use: "音楽好きと繋がりたい",
             favorite_artist: "あいみょん",
             prefecture: "北海道",
             genre: 8,
             responsible_part: "ギター",
             self_introduction: "よろしくお願いします",
             image: File.open("./public/user_images/default.png"))
             
User.create!(name: "Sample User4",
             email: "sample4@email.com",
             password: "password",
             password_confirmation: "password",
             age: 28,
             sex: "女",
             purpose_of_use: "音楽好きと繋がりたい",
             favorite_artist: "yui",
             prefecture: "福岡県",
             genre: 8,
             responsible_part: "ギター",
             self_introduction: "よろしくお願いします",
             image: File.open("./public/user_images/default.png"))
             

User.create!(name: "Sample User5",
             email: "sample5@email.com",
             password: "password",
             password_confirmation: "password",
             age: 20,
             sex: "女",
             purpose_of_use: "音楽好きと繋がりたい",
             favorite_artist: "フラフラ",
             prefecture: "北海道",
             genre: 8,
             responsible_part: "ギター",
             self_introduction: "よろしくお願いします",
             image: File.open("./public/user_images/default.png"))
             
User.create!(name: "Sample User6",
             email: "sample6@email.com",
             password: "password",
             password_confirmation: "password",
             age: 23,
             sex: "男",
             purpose_of_use: "音楽好きと繋がりたい",
             favorite_artist: "あいみょん",
             prefecture: "大阪府",
             genre: 8,
             responsible_part: "ベース",
             self_introduction: "よろしくお願いします",
             image: File.open("./public/user_images/default.png"))

             

             
Post.create!(title: "メンバー募集",
             content: "ギター探してます",
             posts_image: File.open("./public/user_images/Noimage_image.png"),
             recruitment_part: "ギター",
             band_genre: "ロック",
             activity_area: ["京都府", "群馬県"],
             public_article: true,
             user_id: 1)
             
Post.create!(title: "メンバー募集",
             content: "ギター探してます",
             posts_image: File.open("./public/user_images/Noimage_image.png"),
             recruitment_part: "ギター",
             band_genre: "ロック",
             activity_area: ["京都府", "大阪府"],
             public_article: true,
             user_id: 2)
             
Post.create!(title: "メンバー募集",
             content: "ギター探してます",
             posts_image: File.open("./public/user_images/Noimage_image.png"),
             recruitment_part: "ギター",
             band_genre: "ロック",
             activity_area: ["大阪府", "鳥取県"],
             public_article: true,
             user_id: 3)

Post.create!(title: "メンバー募集",
             content: "ギター探してます",
             posts_image: File.open("./public/user_images/Noimage_image.png"),
             recruitment_part: "ギター",
             band_genre: "ロック",
             activity_area: ["滋賀県", "岐阜県"],
             public_article: true,
             user_id: 4)
             
Post.create!(title: "メンバー募集",
             content: "ギター探してます",
             posts_image: File.open("./public/user_images/Noimage_image.png"),
             recruitment_part: "ギター",
             band_genre: "ロック",
             activity_area: ["三重県", "和歌山県"],
             public_article: true,
             user_id: 5)
             
Post.create!(title: "メンバー募集",
             content: "ギター探してます",
             posts_image: File.open("./public/user_images/Noimage_image.png"),
             recruitment_part: "ギター",
             band_genre: "ロック",
             activity_area: ["兵庫県", "石川県"],
             public_article: true,
             user_id: 6)
             