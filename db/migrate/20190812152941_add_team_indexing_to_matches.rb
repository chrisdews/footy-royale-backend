class AddTeamIndexingToMatches < ActiveRecord::Migration[5.2]
  def change
    add_index :matches, :team_a_id
    add_index :matches, :team_h_id
  end
end
