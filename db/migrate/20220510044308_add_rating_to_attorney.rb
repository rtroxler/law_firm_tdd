class AddRatingToAttorney < ActiveRecord::Migration[7.0]
  def change
    add_column :attorneys, :rating, :integer
  end
end
