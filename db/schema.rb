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

ActiveRecord::Schema.define(version: 20161203123127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beddings", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "count",      null: false
    t.text     "kind",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_beddings_on_person_id", using: :btree
  end

  create_table "buildings", force: :cascade do |t|
    t.text     "address",    null: false
    t.integer  "floor",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "building_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["building_id"], name: "index_employees_on_building_id", using: :btree
  end

  create_table "employees_posts", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "post_id",     null: false
    t.index ["employee_id", "post_id"], name: "index_employees_posts_on_employee_id_and_post_id", using: :btree
  end

  create_table "executors", force: :cascade do |t|
    t.integer  "request_id"
    t.integer  "employee_id"
    t.integer  "executortype", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["employee_id"], name: "index_executors_on_employee_id", using: :btree
    t.index ["request_id"], name: "index_executors_on_request_id", using: :btree
  end

  create_table "guests", force: :cascade do |t|
    t.integer  "person_id"
    t.date     "start_date",  null: false
    t.date     "finish_date", null: false
    t.text     "event",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_guests_on_person_id", using: :btree
  end

  create_table "inventaries", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "invent_numb", null: false
    t.text     "kind",        null: false
    t.text     "status",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["room_id"], name: "index_inventaries_on_room_id", using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "worker_id"
    t.integer  "cost",       null: false
    t.boolean  "status",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_payments_on_student_id", using: :btree
    t.index ["worker_id"], name: "index_payments_on_worker_id", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.text     "last_name",    null: false
    t.text     "first_name",   null: false
    t.text     "second_name"
    t.date     "birthday",     null: false
    t.string   "sex",          null: false
    t.string   "series",       null: false
    t.string   "number",       null: false
    t.text     "organization", null: false
    t.date     "pass_date",    null: false
    t.text     "address",      null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["series", "number"], name: "index_people_on_series_and_number", unique: true, using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "person_id"
    t.text     "description", null: false
    t.text     "status",      null: false
    t.text     "kind",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["person_id"], name: "index_requests_on_person_id", using: :btree
  end

  create_table "role_users", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.jsonb    "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_role_users_on_role_id", using: :btree
    t.index ["user_id"], name: "index_role_users_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.text     "name"
    t.text     "shortname"
    t.text     "englishname"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "room_buildings", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "building_id"
    t.integer  "floor",       null: false
    t.text     "attribute"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["building_id"], name: "index_room_buildings_on_building_id", using: :btree
    t.index ["room_id"], name: "index_room_buildings_on_room_id", using: :btree
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "count_living_space", null: false
    t.integer  "square",             null: false
    t.boolean  "bathroom",           null: false
    t.boolean  "toilet",             null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "person_id"
    t.boolean  "medical_certificate", null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["person_id"], name: "index_students_on_person_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.index ["activation_token"], name: "index_users_on_activation_token", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  end

  create_table "visitors", force: :cascade do |t|
    t.integer  "person_id"
    t.date     "start_date",    null: false
    t.date     "finish_date",   null: false
    t.boolean  "accommodation", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["person_id"], name: "index_visitors_on_person_id", using: :btree
  end

  create_table "workers", force: :cascade do |t|
    t.text     "position",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "beddings", "people"
  add_foreign_key "employees", "buildings"
  add_foreign_key "executors", "employees"
  add_foreign_key "executors", "requests"
  add_foreign_key "guests", "people"
  add_foreign_key "inventaries", "rooms"
  add_foreign_key "payments", "students"
  add_foreign_key "payments", "workers"
  add_foreign_key "requests", "people"
  add_foreign_key "role_users", "roles"
  add_foreign_key "role_users", "users"
  add_foreign_key "room_buildings", "buildings"
  add_foreign_key "room_buildings", "rooms"
  add_foreign_key "students", "people"
  add_foreign_key "visitors", "people"
end
