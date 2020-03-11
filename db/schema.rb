# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20200311133323) do

  create_table "entries", force: :cascade do |t|
    t.integer "room_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_entries_on_room_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "favorite_folders", force: :cascade do |t|
    t.integer "favorite_user"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorite_folders_on_user_id"
  end

  create_table "footprints", force: :cascade do |t|
    t.integer "visiter_id"
    t.integer "visited_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_footprints_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.string "already_read"
    t.integer "room_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_messages_on_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.text "title"
    t.string "url"
    t.string "posts_image"
    t.string "video"
    t.string "from_mypage_data"
    t.boolean "public_article"
    t.string "article_kind"
    t.string "activity_area"
    t.string "course_of_action"
    t.string "activity_day"
    t.string "recruitment_gender"
    t.integer "recruitment_age"
    t.string "recruitment_part"
    t.string "demosound"
    t.string "band_genre"
    t.integer "post_age"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urls", force: :cascade do |t|
    t.boolean "public_url"
    t.string "users_url"
    t.string "mypage_image"
    t.string "mypage_movie"
    t.boolean "select_content_delete"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_urls_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "app_id"
    t.string "password_digest"
    t.text "purpose_of_use"
    t.integer "prefecture"
    t.integer "responsible_part"
    t.integer "genre"
    t.integer "age"
    t.string "sex"
    t.string "favorite_artist"
    t.text "self_introduction"
    t.string "image"
    t.string "first_token"
    t.string "third_token"
    t.string "app_secret"
    t.integer "media_count"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
