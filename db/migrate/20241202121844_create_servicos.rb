class CreateServicos < ActiveRecord::Migration[7.0]
  def change
    create_table :servicos do |t|
      t.string :nome
      t.text :descricao
      t.decimal :preco

      t.timestamps
    end
  end
end
