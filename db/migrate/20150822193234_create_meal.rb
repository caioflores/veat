class CreateMeal < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :adress
      t.integer :participants
      t.boolean :deliver
      t.string :picture
      t.integer :price
      t.datetime :datetime
      t.references :cooker, index: true, foreign_key: true
    end
  end
end
