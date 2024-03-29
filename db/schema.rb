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

ActiveRecord::Schema[7.0].define(version: 2024_02_07_075821) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rig_values", force: :cascade do |t|
    t.string "name"
    t.float "value"
    t.string "rig"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rigconfigs", force: :cascade do |t|
    t.string "rig_type"
    t.string "oil_well"
    t.string "drilling_crew"
    t.float "max_pressure_ptong"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rig_number"
  end

end
