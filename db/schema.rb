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

ActiveRecord::Schema[7.2].define(version: 2024_11_02_034155) do
  create_table "budgets", force: :cascade do |t|
    t.decimal "amount"
    t.text "description"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_budgets_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "date"
    t.string "location"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "gift_registries", force: :cascade do |t|
    t.string "item_name"
    t.decimal "price"
    t.string "link"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_gift_registries_on_event_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "name"
    t.string "rsvp_status"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_guests_on_event_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.datetime "time"
    t.text "description"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_itineraries_on_event_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.text "message"
    t.integer "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_notifications_on_event_id"
  end

  add_foreign_key "budgets", "events"
  add_foreign_key "gift_registries", "events"
  add_foreign_key "guests", "events"
  add_foreign_key "itineraries", "events"
  add_foreign_key "notifications", "events"
end
