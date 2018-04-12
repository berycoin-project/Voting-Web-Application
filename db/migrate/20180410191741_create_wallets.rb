class CreateWallets < ActiveRecord::Migration[5.0]
  def change
    create_table :wallets do |t|
      t.string :name
      t.string :wallet_address
      t.float :wallet_balance

      t.timestamps
    end
  end
end
