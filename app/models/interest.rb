class Interest < ApplicationRecord
  has_many :client_interests
  has_many :clients, thorugh: :client_interests
end
