class AddScoreToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :score, :float
  end
end
