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

ActiveRecord::Schema.define(version: 2020_01_21_045300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "decisions", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "next_id"
    t.integer "p1"
    t.integer "p2"
    t.integer "p3"
    t.integer "p4"
    t.integer "p5"
    t.integer "p6"
    t.integer "p7"
    t.integer "p8"
    t.integer "previous_editor_id"
    t.integer "next_editor_id"
    t.bigint "scene_id"
    t.index ["next_id"], name: "index_decisions_on_next_id"
    t.index ["scene_id"], name: "index_decisions_on_scene_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.text "content"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "summary"
    t.integer "editor_id"
    t.integer "p1"
    t.integer "p2"
    t.index ["project_id"], name: "index_scenes_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "decisions", "scenes"
  add_foreign_key "decisions", "scenes", column: "next_id"
  add_foreign_key "projects", "users"
  add_foreign_key "scenes", "projects"
end
