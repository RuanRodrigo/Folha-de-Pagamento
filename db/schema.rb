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

ActiveRecord::Schema.define(:version => 20130131022133) do

  create_table "branches", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "street_number"
    t.string   "district"
    t.integer  "city_id"
    t.integer  "phone_number"
    t.integer  "postal_code"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "address_complement"
  end

  add_index "branches", ["name"], :name => "index_branches_on_name"

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "cities", ["state_id", "created_at"], :name => "index_cities_on_state_id_and_created_at"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
