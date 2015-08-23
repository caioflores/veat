class AddParticipantsNowToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :participants_now, :integer
  end
end
