class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.integer :round_number
      t.string :name
      t.string :prev_winner

      t.timestamps
    end
  end
end
