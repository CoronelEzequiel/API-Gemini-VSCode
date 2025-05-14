# Ruta base del proyecto
$basePath = "C:\Users\user_d\Desktop\proyecto"

# Subcarpetas que contienen otras carpetas
$grupos = @("editoriales_amb", "editoriales_der", "editoriales_izq")

foreach ($grupo in $grupos) {
    $grupoPath = Join-Path $basePath $grupo

    # Obtener todas las subcarpetas dentro del grupo
    $subdirs = Get-ChildItem -Path $grupoPath -Directory

    foreach ($subdir in $subdirs) {
        # Obtener todos los archivos en cada subcarpeta
        $archivos = Get-ChildItem -Path $subdir.FullName -File

        foreach ($archivo in $archivos) {
            # Ruta destino: carpeta principal (un nivel arriba)
            $destino = Join-Path $grupoPath $archivo.Name

            # Mover archivo si no existe ya uno con el mismo nombre
            if (-not (Test-Path -Path $destino)) {
                Move-Item -Path $archivo.FullName -Destination $destino
            } else {
                Write-Host "⚠️ Ya existe un archivo con el nombre '$($archivo.Name)' en $grupoPath. No se movió."
            }
        }
    }
}
