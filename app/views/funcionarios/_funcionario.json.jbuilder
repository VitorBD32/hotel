json.extract! funcionario, :id, :nome, :cargo, :salario, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
