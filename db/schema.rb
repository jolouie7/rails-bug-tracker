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

ActiveRecord::Schema.define(version: 2021_09_13_073819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ticket_comments", force: :cascade do |t|
    t.bigint "ticket_id", null: false
    t.string "title"
    t.string "ticket_creator"
    t.string "developer"
    t.string "status"
    t.text "description"
    t.string "priority"
    t.string "ticket_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ticket_id"], name: "index_ticket_comments_on_ticket_id"
  end

  create_table "ticket_histories", force: :cascade do |t|
    t.bigint "ticket_id", null: false
    t.string "title"
    t.string "ticket_creator"
    t.string "developer"
    t.string "status"
    t.text "description"
    t.string "priority"
    t.string "ticket_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ticket_id"], name: "index_ticket_histories_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.string "title"
    t.string "ticket_creator"
    t.string "developer"
    t.string "status"
    t.text "description"
    t.string "priority"
    t.string "ticket_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_tickets_on_project_id"
  end

  create_table "user_projects", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_user_projects_on_project_id"
    t.index ["user_id"], name: "index_user_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.text "description"
    t.string "role"
    t.string "profile_pic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ticket_comments", "tickets"
  add_foreign_key "ticket_histories", "tickets"
  add_foreign_key "tickets", "projects"
  add_foreign_key "user_projects", "projects"
  add_foreign_key "user_projects", "users"
end
