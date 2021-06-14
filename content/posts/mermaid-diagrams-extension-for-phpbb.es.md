---
title: Extensión Diagramas Mermaid para phpBB
date: 2019-10-26T19:56:28-05:00
lastmod: 2020-12-25T13:52:00-05:00
categorias: [phpbb]
etiquetas: [extension-phpbb, mermaid, diagramas, diagrama-de-flujo, diagrama-de-secuencia, diagrama-de-gantt, diagrama-de-clase, diagrama-de-entidad-relacion, diagrama-de-estado, grafico-git, grafico-circular, bbcode, svg]
archivos: [2019]
image:
  url: https://i.imgur.com/iHEDfxQ.png
  type: png
  width: 882
  height: 610
assets: [fslightbox]
---
Extensión Diagramas Mermaid para phpBB.

[![Estado de desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-mermaid/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mermaid/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-mermaid.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mermaid/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/6ca752c34b9d4b66b7eb1c5de12af765.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-mermaid/dashboard)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-mermaid.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-mermaid/master/license.txt)

Genera diagramas y gráficos a partir de texto de forma similar a como lo hace Markdown. Utiliza la librería [Mermaid](https://github.com/mermaid-js/mermaid) para transformar el texto en un gráfico SVG, y puede generar todos los tipos de gráficos que soporta dicha librería.

Consulte la documentación oficial para saber más acerca de la sintaxis para los distintos tipos de gráficos:

- [mermaid](https://mermaid-js.github.io/mermaid/)

<!--more-->
### Características

- Botón en el editor de mensajes para el BBCode `[mermaid]`
- Genera diagramas en formato SVG a partir de texto
- Soporta todos los diagramas y gráficos disponibles en la librería, que son:
	- Diagrama de flujo
	- Diagrama de secuencia
	- Diagrama de clase
	- Diagrama de entidad-relación
	- Diagrama de estado
	- Diagrama de Gantt
	- Gráfico Git
	- Gráfico circular
- Es compatible con la extensión [Markdown]({{<relref "markdown-extension-for-phpbb">}})
- No requiere de configuración extra

### Vista previa

{{<preview src="https://i.imgur.com/5jhoiqgb.png" link="https://i.imgur.com/5jhoiqg.png" alt="Diagrama de flujo">}}
{{<preview src="https://i.imgur.com/QPVhPuhb.png" link="https://i.imgur.com/QPVhPuh.png" alt="Diagrama de secuencia">}}
{{<preview src="https://i.imgur.com/C1qOugrb.png" link="https://i.imgur.com/C1qOugr.png" alt="Diagrama de Gantt">}}
{{<preview src="https://i.imgur.com/iHEDfxQb.png" link="https://i.imgur.com/iHEDfxQ.png" alt="Diagrama de clase">}}
{{<preview src="https://i.imgur.com/jbZzc2Pb.png" link="https://i.imgur.com/jbZzc2P.png" alt="Diagrama de entidad-relación">}}
{{<preview src="https://i.imgur.com/hDGmUm9b.png" link="https://i.imgur.com/hDGmUm9.png" alt="Diagrama de estado">}}
{{<preview src="https://i.imgur.com/WP7uiQwb.png" link="https://i.imgur.com/WP7uiQw.png" alt="Gráfico circular">}}

*(Haga clic para ver en tamaño completo)*

### Requisitos

- PHP 7.1.3 o superior
- phpBB 3.3 o superior

### Soporte

- [**Página de descarga**](https://www.phpbb-es.com/foro/viewtopic.php?t=43355)
- [Área de soporte en GitHub](https://github.com/AlfredoRamos/phpbb-ext-mermaid/issues)

### Donar

{{<donate>}}

### Instalación

- Descargue la [última versión](https://github.com/AlfredoRamos/phpbb-ext-mermaid/releases)
- Descomprima el archivo `*.zip` o `*.tar.gz`
- Copie los archivos y directorios dentro de `{PHPBB_ROOT}/ext/alfredoramos/mermaid/`
- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Habilitar` y confirme

### Configuración

No requiere de ninguna configuración.

### Desinstalación

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Regrese a `Administrar extensiones` > `Mermaid` > `Borrar datos` y confirme

### Actualización

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Elimine todos los archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/mermaid/`
- Descargue la nueva versión
- Suba los nuevos archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/mermaid/`
- Habilite la extensión nuevamente
