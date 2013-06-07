# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130607191945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "newconference_keynotes", force: true do |t|
    t.integer  "speaker_id",  null: false
    t.string   "title",       null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "newconference_keynotes", ["speaker_id"], name: "index_newconference_keynotes_on_speaker_id", using: :btree

  create_table "newconference_rooms", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newconference_schedules", force: true do |t|
    t.integer  "room_id",    null: false
    t.integer  "keynote_id"
    t.string   "title"
    t.datetime "starts_at",  null: false
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "newconference_schedules", ["keynote_id"], name: "index_newconference_schedules_on_keynote_id", using: :btree
  add_index "newconference_schedules", ["room_id"], name: "index_newconference_schedules_on_room_id", using: :btree

  create_table "newconference_speakers", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "avatar"
    t.string   "github_url"
    t.string   "twitter_url"
    t.string   "other_url"
    t.boolean  "featured",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newconference_sponsors", force: true do |t|
    t.string   "name",       null: false
    t.string   "logo",       null: false
    t.string   "url"
    t.string   "kind",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
