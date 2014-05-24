module OcorrenciasHelper
	def formata_telefone(numero_telefone)
	  tel_formatado = "("
	  tel_formatado << numero_telefone[0..1]
	  tel_formatado << ")"
	  tel_formatado << numero_telefone[2..5]
	  tel_formatado << "-"
	  tel_formatado << numero_telefone[6..9]
	  tel_formatado
	end
end
