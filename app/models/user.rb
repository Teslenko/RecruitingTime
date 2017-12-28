class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable

  validates :email,uniqueness: true

  # validates :username,uniqueness: true

  validates :password, :password_confirmation, presence: true, on: :create

  attr_accessor :password_confirmation

end
