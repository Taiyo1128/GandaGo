# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_07_30_115555) do
  create_table "hotels", force: :cascade do |t|
    t.string "hotel_name"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "lat"
    t.float "lng"
    t.string "image"
  end

  create_table "likeas", force: :cascade do |t|
    t.integer "hotel_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_likeas_on_hotel_id"
    t.index ["user_id"], name: "index_likeas_on_user_id"
  end

  create_table "likebs", force: :cascade do |t|
    t.integer "spot_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_likebs_on_spot_id"
    t.index ["user_id"], name: "index_likebs_on_user_id"
  end

  create_table "likecs", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_likecs_on_restaurant_id"
    t.index ["user_id"], name: "index_likecs_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "vlog_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_likes_on_user_id"
    t.index ["vlog_id"], name: "index_likes_on_vlog_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_name"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "lat"
    t.float "lng"
    t.string "image"
  end

  create_table "spots", force: :cascade do |t|
    t.string "spot_name"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "lat"
    t.float "lng"
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vlogs", force: :cascade do |t|
    t.string "vlog_name"
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "user_id"
  end

  add_foreign_key "likeas", "hotels"
  add_foreign_key "likeas", "users"
  add_foreign_key "likebs", "spots"
  add_foreign_key "likebs", "users"
  add_foreign_key "likecs", "restaurants"
  add_foreign_key "likecs", "users"
  add_foreign_key "likes", "users"
  add_foreign_key "likes", "vlogs"
end
