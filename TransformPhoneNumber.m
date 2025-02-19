let
    // ...existing code...
    Source = ...,
    // ...existing code...
    Prefijo = "57",
    TelefonoModificado = Table.AddColumn(
        Source,
        "TelefonoModificado",
        each 
            let      let
                telefonoOriginal = Text.PadStart(Text.From([telefono]), 10, "0"),xt.From([telefono]), 10, "0"),
                telefonoConPrefijo = if Text.Start(telefonoOriginal, 1) = "1" then "601" & Text.End(telefonoOriginal, 9) else Prefijo & telefonoOriginal601" & Text.End(telefonoOriginal, 9) else Prefijo & telefonoOriginal
            in
                telefonoConPrefijo
    ),  ),
    // Eliminar la columna original si es necesarioolumna original si es necesario
    EliminarColumnaOriginal = Table.RemoveColumns(TelefonoModificado, {"telefono"}),    EliminarColumnaOriginal = Table.RemoveColumns(TelefonoModificado, {"telefono"}),





    RenombrarColumnain    RenombrarColumna = Table.RenameColumns(EliminarColumnaOriginal, {{"TelefonoModificado", "telefono"}})    // Renombrar la nueva columna    // Renombrar la nueva columna
    RenombrarColumna = Table.RenameColumns(EliminarColumnaOriginal, {{"TelefonoModificado", "telefono"}})
in
    RenombrarColumna
