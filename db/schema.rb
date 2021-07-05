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

ActiveRecord::Schema.define(version: 2021_06_15_213248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.string "track"
    t.date "date"
    t.integer "run"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gearing"
    t.integer "prepressure"
    t.integer "postpressure"
    t.integer "rearwidth"
    t.string "frontwidth"
    t.integer "needleclip"
    t.integer "jet"
    t.float "bestlap"
    t.float "secondbestlap"
    t.float "thirdbestlap"
    t.time "time", default: -> { "CURRENT_TIMESTAMP" }
    t.float "airmix"
    t.float "idle"
    t.string "rimset"
    t.string "tyre"
    t.string "tyreset"
    t.string "camber"
    t.string "caster"
    t.string "toe"
    t.string "frontride"
    t.string "rearride"
    t.string "plug"
    t.string "frontbar"
    t.string "fuelload"
    t.string "fuelmix"
    t.string "condition"
    t.integer "chain"
    t.string "axle"
    t.float "endweight"
    t.integer "lapcount"
    t.float "enginehour"
    t.integer "tyreage"
    t.integer "waddingage"
    t.integer "gearoilage"
    t.string "sessiontype"
    t.string "mainchanges"
    t.text "sessionnotes"
    t.integer "besttoprevs"
    t.integer "bestbottomrevs"
    t.integer "secondbestlaptoprevs"
    t.integer "secondbestlapbottomrevs"
    t.integer "thirdbesttoprevs"
    t.integer "thirdbestbottomrevs"
    t.integer "highestrevs"
    t.string "engine"
    t.string "endfuel"
  end

end
