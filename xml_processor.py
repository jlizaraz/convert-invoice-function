import xml.etree.ElementTree as ET

def get_document_type(xml_content):
    """
    Determina el tipo de documento XML.
    
    Args:
        xml_content (str): Contenido del archivo XML.
    
    Returns:
        str: Tipo de documento ('AttachedDocument-2' o 'Invoice-2').
    """
    root = ET.fromstring(xml_content)
    if root.tag.endswith('AttachedDocument'):
        return 'AttachedDocument-2'
    elif root.tag.endswith('Invoice'):
        return 'Invoice-2'
    else:
        return 'Unknown'

def process_xml_file(file_path):
    """
    Procesa un archivo XML y determina su tipo.
    
    Args:
        file_path (str): Ruta del archivo XML.
    
    Returns:
        str: Tipo de documento ('AttachedDocument-2' o 'Invoice-2').
    """
    with open(file_path, 'r', encoding='utf-8') as file:
        xml_content = file.read()
    return get_document_type(xml_content)
