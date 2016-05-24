class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.text :description
      t.datetime :date
      t.text :notes
      t.boolean :complete
      t.integer :work_order
      t.string :assinging_company
      t.boolean :invoice_sent
      t.string :trade

      t.timestamps
    end
  end
end
