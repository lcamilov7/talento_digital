class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # Comentamos registreable para que no se puedan registar
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :clients
  has_many :conversations
  has_one_attached :photo
end
