json.extract! movimentacao, :id, :produto_id, :local_armazenamento_id, :tipo, :data, :quantidade, :created_at, :updated_at
json.url movimentacao_url(movimentacao, format: :json)
