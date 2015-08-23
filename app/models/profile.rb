# == Schema Information
#
# Table name: profiles
#
#  id        :integer          not null, primary key
#  name      :string
#  uid       :string
#  cep       :string
#  adress    :string
#  city      :string
#  state     :string
#  phone     :string
#  cooker_id :integer
#

class Profile < ActiveRecord::Base
  belongs_to :cooker
end
