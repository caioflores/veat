# == Schema Information
#
# Table name: meals
#
#  id               :integer          not null, primary key
#  name             :string
#  description      :string
#  category         :string
#  adress           :string
#  participants_max :integer
#  deliver          :boolean
#  picture          :string
#  price            :integer
#  datetime         :datetime
#  cooker_id        :integer
#  participants_now :integer
#

class Meal < ActiveRecord::Base
  belongs_to :cooker

  has_many :participations
end
