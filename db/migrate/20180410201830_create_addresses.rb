class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street_address
      t.string :country
      t.string :city
      t.string :zip_code

      t.timestamps
    end
  end
end
