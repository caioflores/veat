class RenameColumnInMeals < ActiveRecord::Migration
  def change
    rename_column :meals, :participants, :participants_max
  end
end
