---
title: Extensión Markdown para phpBB
date: 2019-05-24T14:29:05-05:00
lastmod: 2021-06-14T12:46:15-05:00
categorias: [phpbb]
etiquetas: [extension-phpbb, markdown, textformatter, litedown, pipetables]
archivos: [2019]
image:
  url: https://i.imgur.com/svBmgYX.png
  type: png
  width: 519
  height: 381
assets: [fslightbox]
---
Extensión Markdown para phpBB.

[![Estado de desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-markdown/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-markdown/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-markdown.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-markdown/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/7c8dbf2b5e6c4a68b7e0ceb04e9790f3.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-markdown/dashboard)
 [![Progreso de las traducciones](https://badges.crowdin.net/phpbb-ext-markdown/localized.svg)](https://crowdin.com/project/phpbb-ext-markdown)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-markdown.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-markdown/master/license.txt)

Permite usar Markdown en temas, mensajes personales y firma de usuario, que será convertido a HTML. Puede ser usado en lugar o en conjunto con otros BBCodes.

Utiliza los plugins [Litedown](https://s9etextformatter.readthedocs.io/Plugins/Litedown/Syntax/), [PipeTables](https://s9etextformatter.readthedocs.io/Plugins/PipeTables/Syntax/) y [TaskLists](https://s9etextformatter.readthedocs.io/Plugins/TaskLists/Synopsis/) de la libraría [s9e/TextFormatter](https://github.com/s9e/TextFormatter), usada por phpBB para gestionar BBCodes.

<!--more-->
### Características

- Permite usar Markdown en mensajes y firma
- Puede usarse en conjunto con mensajes con BBCode
- Ajustes para habilitar/deshabilitar el uso de Markdown
- Permisos, por foro, para habilitar/deshabilitar esta función
- Página de ayuda que explica la sintaxis a usar
- Agregar tabulaciones al presionar la tecla <kbd>Tabulador</kbd> dentro de los bloques de código Markdown
- Generar lista de tareas
- Opción de editor completo para deshabilitar Markdown sólo en un mensaje o firma
- Generación automática de slugs/IDs en las cabeceras

### Vista previa

{{<preview src="https://i.imgur.com/PSGGuM3b.png" link="https://i.imgur.com/PSGGuM3.png" alt="Características del sitio">}}
{{<preview src="https://i.imgur.com/qYZ7JBCb.png" link="https://i.imgur.com/qYZ7JBC.png" alt="Configuración de mensaje">}}
{{<preview src="https://i.imgur.com/np1PqN6b.png" link="https://i.imgur.com/np1PqN6.png" alt="Configuración de mensajes privados">}}
{{<preview src="https://i.imgur.com/aEKJxWRb.png" link="https://i.imgur.com/aEKJxWR.png" alt="Configuración de firma">}}
{{<preview src="https://i.imgur.com/eiJJvbMb.png" link="https://i.imgur.com/eiJJvbM.png" alt="Permisos de mensajes de grupos de usuarios">}}
{{<preview src="https://i.imgur.com/spT9zXYb.png" link="https://i.imgur.com/spT9zXY.png" alt="Permisos de perfil de grupos de usuarios">}}
{{<preview src="https://i.imgur.com/YXcNxXKb.png" link="https://i.imgur.com/YXcNxXK.png" alt="Permisos de mensajes privados de grupos de usuarios">}}
{{<preview src="https://i.imgur.com/5GIQpMVb.png" link="https://i.imgur.com/5GIQpMV.png" alt="Permisos de foro">}}
{{<preview src="https://i.imgur.com/zWhjOfVb.png" link="https://i.imgur.com/zWhjOfV.png" alt="Preferencias de mensajes de usuario">}}
{{<preview src="https://i.imgur.com/kba871fb.png" link="https://i.imgur.com/kba871f.png" alt="Mensaje con Markdown">}}
{{<preview src="https://i.imgur.com/HGvlwhIb.png" link="https://i.imgur.com/HGvlwhI.png" alt="Mensaje privado con Markdown">}}
{{<preview src="https://i.imgur.com/svBmgYXb.png" link="https://i.imgur.com/svBmgYX.png" alt="Firma de usuario con Markdown">}}
{{<preview src="https://i.imgur.com/1Z7CDDrb.png" link="https://i.imgur.com/1Z7CDDr.png" alt="Opciones de editor de mensajes">}}
{{<preview src="https://i.imgur.com/slz1Z9Yb.png" link="https://i.imgur.com/slz1Z9Y.png" alt="Lista de tareas">}}

*(Haga clic para ver en tamaño completo)*

### Requisitos

- PHP 7.1.3 o superior
- phpBB 3.3 o superior

### Soporte

- [**Página de descarga**](https://www.phpbb.com/customise/db/extension/markdown/)
- [Área de soporte](https://www.phpbb.com/customise/db/extension/markdown/support)
- [Área de soporte en GitHub](https://github.com/AlfredoRamos/phpbb-ext-markdown/issues)
- [Traducciones en Crowdin](https://crowdin.com/project/phpbb-ext-markdown)

### Donar

{{<donate>}}

### Instalación

- Descargue la [última versión](https://github.com/AlfredoRamos/phpbb-ext-markdown/releases)
- Descomprima el archivo `*.zip` o `*.tar.gz`
- Copie los archivos y directorios dentro de `{PHPBB_ROOT}/ext/alfredoramos/markdown/`
- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Habilitar` y confirme

### Configuración

#### Administrador

Para habilitarla o deshabilitarla de forma global:

- Dirígase a su `Panel de Control de Administración` > `Características del Sitio` > `Permitir Markdown`
- Haga clic en `Enviar`

Para cambiar los permisos de foros:

- Dirígase a su `Panel de Control de Administración` > `Permisos` > `Permisos de foros`
- Seleccione los foros y haga clic en `Enviar`
- Seleccione los usuarios o grupos y haga clic en `Editar permisos`
- Seleccione los usuarios o grupos y haga clic en `Permisos avanzados`
- Dirígase a `Contenido` y habilite el permiso `Puede usar Markdown`
- Haga clic en `Aplicar todos los permisos`

Para cambiar los permisos de grupos de usuarios:

- Dirígase a su `Panel de Control de Administración` > `Permisos` > `Permisos de grupos`
- Seleccione el grupo y haga clic en `Enviar`
- Haga clic en `Permisos avanzados`
- Seleccione `Mensaje` y `Mensajes privados` y habilite el permiso `Puede usar Markdown`
- Haga clic en `Aplicar todos los permisos`

#### Usuario

Para cambiar las preferencias de mensajes de usuario:

- Dirígase a su `Panel de Control de Usuario` > `Preferencias de Foros` > `Editar preferencias de mensajes`
- Habilite la opción `Habilitar Markdown por defecto`
- Haga clic en `Enviar`

Para deshabilitar Markdown únicamente en el mensaje actual (tema, mensaje privado, firma de usuario):

- Dirígase a las opciones del editor de mensajes
- Marque la casilla `Deshabilitar Markdown`
- Haga clic en `Vista previa` o `Enviar`

### Desinstalación

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Regrese a `Administrar extensiones` > `Markdown` > `Borrar datos` y confirme

### Actualización

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Elimine todos los archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/markdown/`
- Descargue la nueva versión
- Suba los nuevos archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/markdown/`
- Habilite la extensión nuevamente
