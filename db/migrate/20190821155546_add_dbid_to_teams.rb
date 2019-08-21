class AddDbidToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :db_id, :integer
  end
end
