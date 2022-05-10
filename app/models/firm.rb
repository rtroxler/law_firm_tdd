class Firm < ApplicationRecord
  has_many :attorneys
  has_many :clients
end
