from xml_processor import process_xml_file

def main():
    # Ruta de ejemplo del archivo XML
    file_path = 'ruta/al/archivo.xml'
    
    # Procesar el archivo XML y obtener el tipo de documento
    document_type = process_xml_file(file_path)
    
    # Imprimir el tipo de documento
    print(f'Tipo de documento: {document_type}')

if __name__ == '__main__':
    main()
