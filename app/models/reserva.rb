class Reserva < ApplicationRecord
  belongs_to :hospede
  belongs_to :quarto

  
  validates :check_in, presence: true
  validates :check_out, presence: true
end


