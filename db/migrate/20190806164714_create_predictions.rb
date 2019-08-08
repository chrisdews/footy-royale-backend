class CreatePredictions < ActiveRecord::Migration[5.2]
  def change
    create_table :predictions do |t|
      t.references :match, foreign_key: true
      t.references :team, foreign_key: true
      t.references :user, foreign_key: true
      t.references :league, foreign_key: true

      t.timestamps
    end
  end
end
