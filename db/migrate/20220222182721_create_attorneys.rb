class CreateAttorneys < ActiveRecord::Migration[7.0]
  def change
    create_table :attorneys do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.references :firm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
