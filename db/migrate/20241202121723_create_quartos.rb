class CreateQuartos < ActiveRecord::Migration[7.0]
  def change
    create_table :quartos do |t|
      t.integer :numero
      t.string :tipo_quarto
      t.string :status
      t.decimal :preco

      t.timestamps
    end
  end
end
