class Client < ApplicationRecord
  broadcasts_to ->(_) { 'clients' }

  belongs_to :attorney
  belongs_to :firm
end
