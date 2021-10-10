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

ActiveRecord::Schema.define(version: 2021_10_10_084545) do

  create_table "match_participants", force: :cascade do |t|
    t.integer "match_id", null: false
    t.integer "host_team_id", null: false
    t.integer "away_team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_match_participants_on_match_id"
  end

  create_table "match_stats", force: :cascade do |t|
    t.integer "match_id", null: false
    t.string "match_results"
    t.string "won_by"
    t.string "man_of_the_match"
    t.string "highest_run_scorrer"
    t.string "most_wicket_taker"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["match_id"], name: "index_match_stats_on_match_id"
  end

  create_table "matches", force: :cascade do |t|
    t.date "date", null: false
    t.string "venue", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "team_stats", force: :cascade do |t|
    t.integer "team_id", null: false
    t.integer "played"
    t.integer "won"
    t.integer "lost"
    t.integer "draw"
    t.integer "ranking"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_team_stats_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "home_site"
    t.string "coach"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "match_participants", "matches"
  add_foreign_key "match_stats", "matches"
  add_foreign_key "team_stats", "teams"
end
