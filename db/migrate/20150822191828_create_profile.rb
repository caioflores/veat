class CreateProfile < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :uid
      t.string :cep
      t.string :adress
      t.string :city
      t.string :state
      t.string :phone
      t.references :cooker, index: true, foreign_key: true
    end
  end
end
