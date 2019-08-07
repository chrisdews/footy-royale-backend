class CreateTestFixtures < ActiveRecord::Migration[5.2]
  def change
    create_table :test_fixtures do |t|
      t.integer :code
      t.integer :event
      t.boolean :finished
      t.string :kickoff_time
      t.boolean :started
      t.integer :team_a
      t.integer :team_a_score
      t.integer :team_h
      t.integer :team_h_score

      t.timestamps
    end
  end
end
