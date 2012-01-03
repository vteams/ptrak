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

ActiveRecord::Schema.define(:version => 20111228103218) do

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "curr_project"
  end

  create_table "tasks", :force => true do |t|
    t.string   "task_name"
    t.string   "task_status"
    t.string   "task_level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "task_type"
    t.string   "project_id"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "e_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end