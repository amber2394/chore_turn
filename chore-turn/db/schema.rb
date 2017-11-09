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

ActiveRecord::Schema.define(version: 20171109203015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignment_chores", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "chore_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chore_id"], name: "index_assignment_chores_on_chore_id"
    t.index ["user_id"], name: "index_assignment_chores_on_user_id"
  end

  create_table "chores", force: :cascade do |t|
    t.string "name", null: false
    t.integer "duration", null: false
    t.boolean "status", default: false
    t.date "date", null: false
    t.bigint "household_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id"], name: "index_chores_on_household_id"
  end

  create_table "household_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "household_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["household_id"], name: "index_household_users_on_household_id"
    t.index ["user_id"], name: "index_household_users_on_user_id"
  end

  create_table "households", force: :cascade do |t|
    t.string "name", null: false
    t.string "home_address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assignment_chores", "chores"
  add_foreign_key "assignment_chores", "users"
  add_foreign_key "chores", "households"
  add_foreign_key "household_users", "households"
  add_foreign_key "household_users", "users"
end
