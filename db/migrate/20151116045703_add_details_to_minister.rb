class AddDetailsToMinister < ActiveRecord::Migration
  def change
    add_column :ministers, :name, :string
    add_column :ministers, :title, :string
  end
end
