class CreateScoreranks < ActiveRecord::Migration[5.0]
  def change
    create_table :scoreranks do |t|
      t.integer :league_id
     	t.integer :team_group
     	t.integer :team_id
     	t.string :known_name_zh
     	t.integer :played
     	t.integer :rank_index
     	t.integer :win
     	t.integer :draw
     	t.integer :lost
     	t.integer :hits
     	t.integer :miss
     	t.integer :difference
     	t.integer :score
     	t.float :avg_goal_hit
     	t.float :avg_goal_lost
     	t.float :avg_goal_win
     	t.float :avg_score
     	t.string :season_id

      t.timestamps
    end
    add_index :scoreranks, :juhe_id
  end
end
