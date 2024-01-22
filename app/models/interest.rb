class Interest < ApplicationRecord
  has_many :client_interests
  has_many :clients, through: :client_interests
end
