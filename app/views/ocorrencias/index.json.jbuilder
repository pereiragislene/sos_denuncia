json.array!(@ocorrencias) do |ocorrencia|
  json.extract! ocorrencia, :id, :tipo_ocorrencia, :descricao, :nome_vitima, :logradouro, :bairro, :cidade, :estado, :nome_contato, :telefone_contato
  json.url ocorrencia_url(ocorrencia, format: :json)
end
