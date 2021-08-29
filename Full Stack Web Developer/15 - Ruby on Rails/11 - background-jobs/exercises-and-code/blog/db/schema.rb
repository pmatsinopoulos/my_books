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

ActiveRecord::Schema.define(version: 20170728185100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title", null: false
    t.string "text", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "state", default: 0, null: false
    t.index ["user_id"], name: "articles_user_id_idx"
  end

  create_table "articles_categories", force: :cascade do |t|
    t.bigint "article_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id", "category_id"], name: "articles_categories_article_category_uidx", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "categories_name_uidx", unique: true
  end

  create_table "countries", force: :cascade do |t|
    t.string "alpha_2_code", limit: 2, null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alpha_2_code"], name: "countries_alpha_2_code_uidx", unique: true
    t.index ["name"], name: "countries_name_uidx", unique: true
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email_confirmation_token"
    t.boolean "terms_of_service", default: false, null: false
    t.bigint "country_id"
    t.string "locale", limit: 2, default: "en", null: false
    t.string "time_zone", default: "Eastern Time (US & Canada)", null: false
    t.index ["country_id"], name: "users_country_idx"
    t.index ["email"], name: "users_email_uidx", unique: true
  end

  add_foreign_key "articles", "users", name: "articles_user_id_users_id_fk"
  add_foreign_key "articles_categories", "articles", name: "articles_categories_article_fk"
  add_foreign_key "articles_categories", "categories", name: "articles_categories_category_fk"
  add_foreign_key "users", "countries", name: "users_country_fk"
end
