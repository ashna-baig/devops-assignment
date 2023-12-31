class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #enum :role, %(user admin)
  enum :role, [ :user, :admin ]
  has_many :stories 
  has_many :comments
  has_many :likes
end
