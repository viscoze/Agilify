class User < ApplicationRecord
  has_many :github_projects, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:github]

  def self.find_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid      = auth.uid
      user.token    = auth.credentials.token
      user.email    = auth.info.email
      user.nickname = auth.info.nickname
      user.password = Devise.friendly_token[0,20]
    end
  end
end
