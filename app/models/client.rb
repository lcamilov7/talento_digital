class Client < ApplicationRecord
  belongs_to :user
  has_many :conversations

  has_many :client_interests
  has_many :interests, through: :client_interests

  enum status: {
    "Prospecto" => 0,
    "Muy interesado" => 1,
    "Cliente" => 2
  }
end