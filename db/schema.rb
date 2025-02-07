# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_06_181636) do
  create_table "contact_informations", force: :cascade do |t|
    t.integer "leader_id", null: false
    t.string "physical_street_address1"
    t.string "physical_street_address2"
    t.string "physical_street_address3"
    t.string "physical_city"
    t.string "physical_state"
    t.string "physical_zip"
    t.string "physical_country"
    t.string "permanent_street_address1"
    t.string "permanent_street_address2"
    t.string "permanent_street_address3"
    t.string "permanent_city"
    t.string "permanent_state"
    t.string "permanent_zip"
    t.string "permanent_country"
    t.string "email"
    t.string "phone"
    t.string "phone_type"
    t.string "alternate_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leader_id"], name: "index_contact_informations_on_leader_id"
  end

  create_table "leaders", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "suffix"
    t.string "preferred_name"
    t.string "other_names"
    t.string "pronouns"
    t.string "self_identified_gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contact_informations", "leaders"
end
