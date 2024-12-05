json.extract! reserva, :id, :check_in, :check_out, :hospede_id, :quarto_id, :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
