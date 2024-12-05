class CreateReservas < ActiveRecord::Migration[7.0]
  def change
    create_table :reservas do |t|
      t.date :check_in
      t.date :check_out
      t.references :hospede, null: false, foreign_key: true
      t.references :quarto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
