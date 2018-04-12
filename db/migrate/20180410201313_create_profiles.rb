class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :gender

      t.timestamps
    end
  end
end
