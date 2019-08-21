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

ActiveRecord::Schema.define(version: 2019_08_21_155546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leagues", force: :cascade do |t|
    t.integer "round_number"
    t.string "name"
    t.string "prev_winner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "current_week"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "api_code"
    t.integer "event"
    t.integer "team_a_id"
    t.integer "team_h_id"
    t.integer "team_a_score"
    t.integer "team_h_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_a_id"], name: "index_matches_on_team_a_id"
    t.index ["team_h_id"], name: "index_matches_on_team_h_id"
  end

  create_table "predictions", force: :cascade do |t|
    t.bigint "match_id"
    t.bigint "team_id"
    t.bigint "user_id"
    t.bigint "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "royale_round"
    t.index ["league_id"], name: "index_predictions_on_league_id"
    t.index ["match_id"], name: "index_predictions_on_match_id"
    t.index ["team_id"], name: "index_predictions_on_team_id"
    t.index ["user_id"], name: "index_predictions_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "short_name"
    t.string "club_code"
    t.string "stadium"
    t.integer "db_id"
  end

  create_table "user_leagues", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "league_id"
    t.boolean "user_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_user_leagues_on_league_id"
    t.index ["user_id"], name: "index_user_leagues_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "win_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "predictions", "leagues"
  add_foreign_key "predictions", "matches"
  add_foreign_key "predictions", "teams"
  add_foreign_key "predictions", "users"
  add_foreign_key "user_leagues", "leagues"
  add_foreign_key "user_leagues", "users"
end
