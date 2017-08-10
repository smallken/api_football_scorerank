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

ActiveRecord::Schema.define(version: 20170802093008) do

  create_table "scoreranks", force: :cascade do |t|
    t.integer  "league_id"
    t.integer  "team_group"
    t.integer  "team_id"
    t.string   "known_name_zh"
    t.integer  "played"
    t.integer  "rank_index"
    t.integer  "win"
    t.integer  "draw"
    t.integer  "lost"
    t.integer  "hits"
    t.integer  "miss"
    t.integer  "difference"
    t.integer  "score"
    t.float    "avg_goal_hit"
    t.float    "avg_goal_lost"
    t.float    "avg_goal_win"
    t.float    "avg_score"
    t.string   "season_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index [nil], name: "index_scoreranks_on_juhe_id"
  end

end
