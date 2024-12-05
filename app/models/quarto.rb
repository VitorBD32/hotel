class Quarto < ApplicationRecord
    validates :numero, presence: true, uniqueness: true 
    validates :tipo_quarto, presence: true 
    validates :status, presence: true 
    validates :preco, presence: true, numericality: { greater_than: 0 } 
    
    has_many :reservas
end
