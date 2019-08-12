class AddCurrentWeekToLeagues < ActiveRecord::Migration[5.2]
  def change
    add_column :leagues, :current_week, :integer
  end
end
