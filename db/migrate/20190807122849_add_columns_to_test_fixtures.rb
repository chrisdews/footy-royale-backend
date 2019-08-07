class AddColumnsToTestFixtures < ActiveRecord::Migration[5.2]
    def change
      add_column :test_fixtures, :finished_provisional, :boolean
      add_column :test_fixtures, :fpl_id, :integer
      add_column :test_fixtures, :minutes, :integer
      add_column :test_fixtures, :provisional_start_time, :boolean
      add_column :test_fixtures, :stats, :string, array: true, default: []
      add_column :test_fixtures, :team_h_difficulty, :integer
      add_column :test_fixtures, :team_a_difficulty, :integer



    end
end
