class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Adicione seus atributos personalizados aqui
  has_many :posts

  # ... outras associações e métodos
end