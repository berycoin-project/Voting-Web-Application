class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.string :name
      t.string :vote_type
      t.float :vote_weight
      t.text :vote_message

      t.timestamps
    end
  end
end
