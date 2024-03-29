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

ActiveRecord::Schema.define(:version => 20110906203626) do

  create_table "companies", :force => true do |t|
    t.integer  "c_id"
    t.string   "c_name"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_wise_ques", :force => true do |t|
    t.integer  "c_id"
    t.integer  "q_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "domain_wise_ques", :force => true do |t|
    t.string   "domain_name"
    t.integer  "q_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.integer  "q_id"
    t.string   "question_text"
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.string   "option4"
    t.string   "option5"
    t.string   "answer"
    t.string   "expl"
    t.integer  "admin_rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
