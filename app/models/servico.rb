class Servico < ApplicationRecord

    validates :nome, presence: true
    validates :descricao, presence: true
    validates :preco, presence: true, numericality: { greater_than: 0 }
  
    has_many :reservas
end


  