class CreateUserRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_ranks do |t|
      t.references :user, foreign_key: true
      t.references :rank, foreign_key: true

      t.timestamps
    end
  end
end
