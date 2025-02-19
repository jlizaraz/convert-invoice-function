// ...existing code...### Paso 5: Extraer Información AdicionalEmpresaEncontrada = 




















)    'BD 10.000 Empresas 2023'[nombre de la empresa] = 'Contactos'[EmpresaEncontrada]    MAX('BD 10.000 Empresas 2023'[informacion_relevante]),CALCULATE(InformacionAdicional = // ...existing code...)    ) > 0        0        1,        'BD 10.000 Empresas 2023'[nombre de la empresa],        'Contactos'[nombre de la empresa],    SEARCH(    FIRSTNONBLANK('BD 10.000 Empresas 2023'[nombre de la empresa], 1),CALCULATE(EmpresaEncontrada = 










)    'BD 10.000 Empresas 2023'[nombre de la empresa] = 'Contactos'[EmpresaEncontrada]    MAX('BD 10.000 Empresas 2023'[informacion_relevante]),CALCULATE(InformacionAdicional = ### Ejemplo de Columna Calculada para Extraer Información Adicional1. Una vez que tengas la columna `EmpresaEncontrada`, puedes usarla para extraer información adicional de la tabla "BD 10.000 Empresas 2023".CALCULATE(
    FIRSTNONBLANK('BD 10.000 Empresas 2023'[nombre de la empresa], 1),
    SEARCH(
        'Contactos'[nombre de la empresa],
        'BD 10.000 Empresas 2023'[nombre de la empresa],
        1,
        0
    ) > 0
)
