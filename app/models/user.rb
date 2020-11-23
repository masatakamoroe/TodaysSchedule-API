class User < ApplicationRecord
  has_many :calendars
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:twitter]
  include DeviseTokenAuth::Concerns::User
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #:lockable, :timeoutable,:trackable,:confirmable,
end
