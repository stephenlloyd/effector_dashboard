class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :first_line
      t.string :second_line
      t.string :city
      t.string :county
      t.string :postcode
      t.text :notes

      t.timestamps
    end
  end
end
