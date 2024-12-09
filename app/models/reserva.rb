class Reserva < ApplicationRecord

  def index
    # Assuming you have an association between Reserva and Quarto
    @quartos = Quarto.all
  end

  belongs_to :hospede
  belongs_to :quarto

  
  validates :check_in, presence: true
  validates :check_out, presence: true
end


