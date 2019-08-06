class CreateUserLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :user_leagues do |t|
      t.references :user, foreign_key: true
      t.references :league, foreign_key: true
      t.boolean :user_active

      t.timestamps
    end
  end
end
