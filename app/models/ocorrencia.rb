class Ocorrencia < ActiveRecord::Base 
	validates_presence_of :tipo_ocorrencia, :message => " - deve ser preenchido"
	validates_presence_of :descricao, :message => " - deve ser preenchido"
	validates_presence_of :nome_vitima, :message => " - deve ser preenchido"
	validates_presence_of :logradouro, :message => " - deve ser preenchido"
	validates_presence_of :bairro, :message => " - deve ser preenchido"
	validates_presence_of :cidade, :message => " - deve ser preenchido"
	validates_presence_of :estado, :message => " - deve ser preenchido"
	validates_presence_of :nome_contato, :message => " - deve ser preenchido"
	validates_presence_of :telefone_contato, :message => " - deve ser preenchido"
	validates_format_of :telefone_contato, :with => /\A[\d]+\z/, :message => " - deve ser um numero", :allow_blank => true
	validates_length_of :telefone_contato, :is => 10, :message => " - deve ter 10 dígitos", :allow_blank => true

	TIPOS_DE_OCORRENCIA = ["Assédio", "Homofobia", "Pedofília", "Racismo", "Violência contra mulher"]
end