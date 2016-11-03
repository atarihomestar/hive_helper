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

ActiveRecord::Schema.define(version: 20160126002941) do

  create_table "lists", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.integer  "perfect_count"
    t.integer  "current_perfect_streak"
    t.integer  "longest_perfect_streak"
    t.boolean  "currently_attempting_perfection", default: true
  end

  create_table "settings", force: :cascade do |t|
    t.integer  "list_num"
    t.integer  "streak_min"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "total_guesses"
  end

  create_table "words", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "guess_count",         default: 0, null: false
    t.integer  "correct_guess_count", default: 0, null: false
    t.integer  "streak_count",        default: 0, null: false
    t.string   "streak_type"
    t.integer  "list_num",            default: 0, null: false
  end

end
