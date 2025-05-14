
# 📝 Corrector de Transcripciones Políticas con Gemini

Este proyecto automatiza la corrección y mejora de textos transcritos provenientes de fuentes periodísticas y políticas argentinas, aplicando reglas de edición según su orientación ideológica. Utiliza modelos de lenguaje de Google Gemini para procesar grandes volúmenes de texto de forma escalable, trazable y categorizada.

---

## 🎯 Objetivo

El objetivo principal es limpiar, corregir y mejorar las transcripciones de discursos y editoriales agrupadas por orientación política (`izquierda`, `derecha`, `neutral`), aplicando reglas como:

- Corrección ortográfica
- Eliminación de nombres y apellidos
- Verificación de cohesión y coherencia textual

---

## ⚙️ Tecnologías utilizadas

- Python 3.10+
- Google Gemini API (google-generativeai)
- Visual Studio Code
- Archivos planos (.txt)
- Manejo de archivos .zip y logging de resultados

---

## 🛠️ Cómo se llevó a cabo

1. Se organizan las transcripciones en carpetas según su orientación.
2. Se definen reglas específicas por categoría.
3. Se genera un prompt dinámico por archivo, enviado a la API Gemini.
4. Se almacena el texto corregido, los cambios aplicados y los tokens procesados.

---

## 🧱 Estructura del flujo

- Extracción de archivos `.zip`
- Limpieza de duplicados corregidos previamente
- Corrección usando Gemini
- Registro de logs detallados por archivo
- Clasificación y almacenamiento por carpeta

---

## 🚧 Problemas encontrados

- Desconexiones frecuentes en Google Colab durante procesamiento masivo
- Bloqueos por contenido sensible (lenguaje ofensivo o político)
- Textos muy largos que superaban el límite de tokens
- Archivos con caracteres especiales en nombres

---

## ✅ Soluciones implementadas

- Migración del entorno a Visual Studio Code
- Implementación de filtros y token counting por archivo
- Logging completo de cambios, errores y consumo de tokens
- Control de versiones de modelos y prompts personalizados

---

## 🏆 Logros del proyecto

- ✅ Automatización total de corrección con reglas adaptadas
- ✅ Procesamiento masivo sin intervención manual
- ✅ Reducción del tiempo de edición humana
- ✅ Mejora de trazabilidad y calidad editorial
- ✅ Escalabilidad del análisis discursivo y político
- ✅ Estabilidad del entorno de ejecución (VS Code)
- ✅ Registros y métricas de uso por archivo procesado

---

## 🧩 Resumen de impacto

> “Este corrector automático nos permitió escalar, estandarizar y documentar miles de textos de opinión política, aplicando inteligencia artificial con reglas específicas y logrando resultados trazables, editables y listos para análisis discursivo masivo.”
