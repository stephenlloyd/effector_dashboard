class AddAddessToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :address, foreign_key: true
  end
end
