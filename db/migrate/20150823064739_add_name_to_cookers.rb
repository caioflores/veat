class AddNameToCookers < ActiveRecord::Migration
  def change
    add_column :cookers, :name, :string
  end
end
