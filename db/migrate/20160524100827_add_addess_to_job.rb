class AddAddessToJob < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobs, :address, foreign_key: true
  end
end
