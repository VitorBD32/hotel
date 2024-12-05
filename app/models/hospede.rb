class Hospede < ApplicationRecord
    validates :nome, presence: true
    validates :email, presence: true, uniqueness: true
    validates :telefone, presence: true
  
    has_many :reservas
end

