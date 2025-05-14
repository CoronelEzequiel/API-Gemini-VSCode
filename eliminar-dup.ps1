# Ruta base (podés cambiarla si querés apuntar a otra)
$directorio = Get-Location

# Buscar archivos que terminen en "(1).txt"
$archivos = Get-ChildItem -Path $directorio -Recurse -File -Filter "*.txt" | Where-Object { $_.Name -like "*(1).txt" }

foreach ($archivo in $archivos) {
    try {
        Remove-Item -Path $archivo.FullName -Force
        Write-Host "🗑️ Eliminado: $($archivo.FullName)"
    } catch {
        Write-Host "❌ Error al eliminar: $($archivo.FullName) - $($_.Exception.Message)"
    }
}
