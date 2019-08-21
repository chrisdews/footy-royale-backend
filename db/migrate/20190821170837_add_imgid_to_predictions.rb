class AddImgidToPredictions < ActiveRecord::Migration[5.2]
  def change
    add_column :predictions, :img_id, :integer
  end
end
