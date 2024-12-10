# frozen_string_literal: true

class AddDeviseToHospedes < ActiveRecord::Migration[7.0]
  def self.up
    change_table :hospedes, bulk: true do |t|
      # Database authenticatable
      t.string :email,              null: false, default: "" unless column_exists?(:hospedes, :email)
      t.string :encrypted_password, null: false, default: "" unless column_exists?(:hospedes, :encrypted_password)

      # Recoverable
      t.string   :reset_password_token unless column_exists?(:hospedes, :reset_password_token)
      t.datetime :reset_password_sent_at unless column_exists?(:hospedes, :reset_password_sent_at)

      # Rememberable
      t.datetime :remember_created_at unless column_exists?(:hospedes, :remember_created_at)

      # Uncomment the following lines if timestamps weren't included in your original model.
      # t.timestamps null: false unless column_exists?(:hospedes, :created_at)
    end

    # Add indexes conditionally
    add_index :hospedes, :email, unique: true unless index_exists?(:hospedes, :email)
    add_index :hospedes, :reset_password_token, unique: true unless index_exists?(:hospedes, :reset_password_token)
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
