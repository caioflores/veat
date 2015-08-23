# == Schema Information
#
# Table name: participations
#
#  id        :integer          not null, primary key
#  cooker_id :integer
#  meal_id   :integer
#

class Participation < ActiveRecord::Base
  belongs_to :meal
  has_many :cookers
end
