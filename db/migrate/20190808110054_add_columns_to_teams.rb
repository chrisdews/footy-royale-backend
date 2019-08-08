class AddColumnsToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :short_name, :string
    add_column :teams, :club_code, :string
    add_column :teams, :stadium, :string
  end
end