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

ActiveRecord::Schema.define(version: 2019_08_06_185342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "initiator_id"
    t.integer "receiver_id"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educator_rooms", force: :cascade do |t|
    t.integer "educator_id"
    t.integer "room_id"
    t.string "hours"
    t.string "school_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educators", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "conversation_id"
    t.integer "sender_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_number"
    t.string "name"
    t.integer "room_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_carers", force: :cascade do |t|
    t.integer "student_id"
    t.integer "carer_id"
    t.integer "fam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_rooms", force: :cascade do |t|
    t.integer "student_id"
    t.integer "room_id"
    t.string "hours"
    t.string "school_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "student_number"
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "nickname"
    t.string "picture"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "type"
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "picture"
    t.integer "educator_type"
    t.integer "comm_pref"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
