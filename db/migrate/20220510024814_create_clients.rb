class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.references :attorney, null: false, foreign_key: true
      t.string :email
      t.references :firm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
