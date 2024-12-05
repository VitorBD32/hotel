class CreateHospedes < ActiveRecord::Migration[7.0]
  def change
    create_table :hospedes do |t|
      t.string :nome
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
