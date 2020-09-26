class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :rememberable, 
    :database_authenticatable, 
    :omniauthable, :omniauth_providers => [:doorkeeper]

  has_many :employees
end
