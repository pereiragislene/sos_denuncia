class CreateOcorrencias < ActiveRecord::Migration
  def change
    create_table :ocorrencias do |t|
      t.string :tipo_ocorrencia
      t.text :descricao
      t.string :nome_vitima
      t.string :logradouro
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :nome_contato
      t.string :telefone_contato

      t.timestamps
    end
  end
end
