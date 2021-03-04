class AddMagnitudeToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :magnitude, :float
  end
end
