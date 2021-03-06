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

ActiveRecord::Schema.define(:version => 20131107031528) do

  create_table "performances", :force => true do |t|
    t.text     "detail"
    t.integer  "minutes"
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "yellows"
    t.boolean  "red"
    t.boolean  "initial"
    t.integer  "distance"
    t.integer  "player_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "performances", ["player_id"], :name => "index_performances_on_player_id"

  create_table "players", :force => true do |t|
    t.string   "name"
    t.integer  "jersey_number"
    t.integer  "goals"
    t.string   "position"
    t.integer  "year_of_birth"
    t.string   "country"
    t.integer  "team_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "founded_at"
    t.string   "country"
    t.boolean  "first_div"
    t.text     "address"
    t.integer  "phone"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "stadium_name", :default => "No Ground"
  end

end
