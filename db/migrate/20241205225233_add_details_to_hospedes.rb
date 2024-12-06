class AddDetailsToHospedes < ActiveRecord::Migration[7.0]
  def change
    # Verifica se a coluna 'name' já existe antes de adicionar 
    unless column_exists?(:hospedes, :name)
    add_column :hospedes, :name, :string
    add_column :hospedes, :address, :string
    add_column :hospedes, :rating, :integer
  end
end
end