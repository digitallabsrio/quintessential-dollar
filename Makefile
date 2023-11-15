generate-pdfs:
	@find . -type f -name "*.html" -print0 | xargs -0 -I{} sh -c 'pdf_file="$(dirname "{}")/$(basename "{}" .html).pdf"; [ ! -f "$pdf_file" ] && echo $pdf_file && html-export-pdf-cli "{}" -o "$pdf_file" -m top=10,bottom=10,left=10,right=10'

# Comando phony para evitar conflito com arquivos com nomes iguais aos targets
.PHONY: generate-pdfs
