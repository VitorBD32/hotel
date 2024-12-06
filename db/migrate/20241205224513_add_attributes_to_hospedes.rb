class AddAttributesToHospedes < ActiveRecord::Migration[7.0]
  def change
    add_column :hospedes, :name, :string
    add_column :hospedes, :address, :string
    add_column :hospedes, :rating, :integer
  end
end
