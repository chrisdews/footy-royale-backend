class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :api_code
      t.integer :event
      t.integer :team_a_id
      t.integer :team_h_id
      t.integer :team_a_score
      t.integer :team_h_score

      t.timestamps
    end
  end
end
