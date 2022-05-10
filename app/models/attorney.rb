class Attorney < ApplicationRecord
  belongs_to :firm

  has_many :clients

  def full_name
    "#{first_name} #{middle_name} #{last_name} #{suffix}"
  end
end
