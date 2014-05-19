json.array!(@ocorrences) do |ocorrence|
  json.extract! ocorrence, :id, :tipo_ocorrencia, :descricao, :nome_vitima, :endereco, :nome_contato, :tel_contato
  json.url ocorrence_url(ocorrence, format: :json)
end
