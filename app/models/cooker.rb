# == Schema Information
#
# Table name: cookers
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  provider               :string
#  uid                    :string
#

class Cooker < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_one :profile, dependent: :destroy
  has_many :meals

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |cooker|
      cooker.email = auth.info.email
      cooker.password = Devise.friendly_token[0,20]
      cooker.name = auth.info.name
      cooker.image = auth.info.image
    end
  end

  def self.new_with_session(params, session)
    super.tap do |cooker|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        cooker.email = data["email"] if cooker.email.blank?
      end
    end
  end

end
