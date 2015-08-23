class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.references :cooker, index: true, foreign_key: true
      t.references :meal, index: true, foreign_key: true
    end
  end
end
