class Funcionario < ApplicationRecord
    validates :nome, presence: true 
    validates :cargo, presence: true 
    validates :salario, presence: true, numericality: { greater_than: 0 } 
    
    has_many :reservas
end
