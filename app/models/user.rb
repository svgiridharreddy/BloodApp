class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:github]
  #devise :omniauthable, :omniauth_providers => [:google_oauth2]
  validates :name, :phone, :address, :blood_group, presence: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email || "#{auth.info.nickname}@github.com"
      user.password = Devise.friendly_token[0,20]
    end
  end

  def self.search(search)
    where("blood_group LIKE ?", "%#{search}%")
  end
end
