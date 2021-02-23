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

ActiveRecord::Schema.define(version: 2021_02_23_022544) do

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "battery_building_id"
    t.string "battery_building_type"
    t.string "battery_employee_id"
    t.date "battery_date_of_commission"
    t.string "battery_date_of_last_inspection"
    t.string "battery_certificate_of_operations"
    t.string "battery_information"
    t.text "battery_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "customer_user_id"
    t.date "customer_creation_date"
    t.string "customer_company_name"
    t.string "customer_company_hq_address"
    t.string "customer_full_name_of_company_contact"
    t.string "customer_company_phone"
    t.string "customer_company_email"
    t.text "customer_company_description"
    t.string "customer_full_name_of_service_technical_authority"
    t.string "customer_technical_authority_phone"
    t.string "customer_technical_manager_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email_quote"
    t.string "phone"
    t.string "building_type"
    t.string "number_apartments_residential"
    t.string "number_floors_residential"
    t.string "number_basements_residential"
    t.string "number_companies"
    t.string "number_floors_commercial"
    t.string "number_basements_commercial"
    t.string "number_parking_commercial"
    t.string "number_elevators"
    t.string "number_corporate"
    t.string "number_floors_corporate"
    t.string "number_basements_corporate"
    t.string "number_parking_corporate"
    t.string "number_occupants_corporate"
    t.string "number_of_corporations"
    t.string "number_floors_hydrid"
    t.string "number_basements_hybrid"
    t.string "number_parking_hybrid"
    t.string "number_occupants_hybrid"
    t.string "number_hours_act"
    t.string "service_level"
    t.integer "elevators_required"
    t.string "elevator_unit_price"
    t.string "elevator_total_price"
    t.string "installation_fees"
    t.string "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "employees", "users"
end
