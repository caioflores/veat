class AddImageToCookers < ActiveRecord::Migration
  def change
    add_column :cookers, :image, :string
  end
end
