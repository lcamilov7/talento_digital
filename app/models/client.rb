class Client < ApplicationRecord
  belongs_to :user
  has_many :conversations, dependent: :destroy

  has_many :client_interests, dependent: :destroy
  has_many :interests, through: :client_interests

  enum status: {
    "Prospecto" => 0,
    "Muy interesado" => 1,
    "Cliente" => 2
  }

  # Validaciones
  validates :name, :status, :email, presence: true

  # PG Search
  include PgSearch::Model
  pg_search_scope :client_search,
  against: [ :status ],
  using: {
    tsearch: { prefix: true }
  }
end
