class CreateOcorrences < ActiveRecord::Migration
  def change
    create_table :ocorrences do |t|
      t.string :tipo_ocorrencia
      t.text :descricao
      t.string :nome_vitima
      t.text :endereco
      t.string :nome_contato
      t.string :tel_contato

      t.timestamps
    end
  end
end
