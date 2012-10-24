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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121024091434) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "time"
    t.integer  "organizer_id"
    t.string   "location"
    t.text     "rules"
    t.string   "game"
    t.text     "participants"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "events", ["organizer_id"], :name => "index_events_on_organizer_id"

  create_table "organizers", :force => true do |t|
    t.string   "name"
    t.string   "organization"
    t.date     "joined"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "participants", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "email"
    t.boolean  "payed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
