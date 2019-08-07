class AddRoyaleRoundToPrediction < ActiveRecord::Migration[5.2]
  def change
    add_column :predictions, :royale_round, :integer
  end
end
