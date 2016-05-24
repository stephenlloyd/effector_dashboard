class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mobile, :string
    add_column :users, :notes, :text
    add_column :users, :skills, :string
    add_column :users, :admin, :boolean
  end
end
