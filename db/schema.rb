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

ActiveRecord::Schema.define(version: 2018_12_01_054332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filters", force: :cascade do |t|
    t.bigint "property_id"
    t.bigint "condition_id"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_id"], name: "index_filters_on_condition_id"
    t.index ["property_id"], name: "index_filters_on_property_id"
  end

  create_table "folder_rules", force: :cascade do |t|
    t.bigint "folder_id"
    t.bigint "rule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["folder_id"], name: "index_folder_rules_on_folder_id"
    t.index ["rule_id"], name: "index_folder_rules_on_rule_id"
  end

  create_table "folders", force: :cascade do |t|
    t.string "fid"
    t.bigint "storage_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["storage_id"], name: "index_folders_on_storage_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rule_actions", force: :cascade do |t|
    t.bigint "rule_id"
    t.bigint "action_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_rule_actions_on_action_id"
    t.index ["rule_id"], name: "index_rule_actions_on_rule_id"
  end

  create_table "rule_filters", force: :cascade do |t|
    t.bigint "rule_id"
    t.bigint "filter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filter_id"], name: "index_rule_filters_on_filter_id"
    t.index ["rule_id"], name: "index_rule_filters_on_rule_id"
  end

  create_table "rules", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storages", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_folders", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "folder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["folder_id"], name: "index_user_folders_on_folder_id"
    t.index ["user_id"], name: "index_user_folders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "token"
    t.string "refresh_token"
    t.integer "expires_at"
    t.boolean "expires"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "filters", "conditions"
  add_foreign_key "filters", "properties"
  add_foreign_key "folder_rules", "folders"
  add_foreign_key "folder_rules", "rules"
  add_foreign_key "folders", "storages"
  add_foreign_key "rule_actions", "actions"
  add_foreign_key "rule_actions", "rules"
  add_foreign_key "rule_filters", "filters"
  add_foreign_key "rule_filters", "rules"
  add_foreign_key "user_folders", "folders"
  add_foreign_key "user_folders", "users"
end
