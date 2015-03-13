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

ActiveRecord::Schema.define(:version => 20150303081528) do

  create_table "consults", :force => true do |t|
    t.integer  "patient_id"
    t.datetime "service_date"
    t.string   "reservation_number"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "patient_number"
    t.string   "patient_name"
    t.string   "medical_aid"
    t.string   "medical_aid_number"
    t.string   "principal_member"
    t.string   "postal_address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "tel_no"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
