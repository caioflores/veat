class AddOmniauthToCookers < ActiveRecord::Migration
  def change
    add_column :cookers, :provider, :string
    add_index :cookers, :provider
    add_column :cookers, :uid, :string
    add_index :cookers, :uid
  end
end
