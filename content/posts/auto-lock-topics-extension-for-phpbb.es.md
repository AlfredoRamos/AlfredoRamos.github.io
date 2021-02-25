---
title: Extensión Auto-lock Topics para phpBB
date: 2017-05-11T18:52:54-05:00
lastmod: 2020-12-25T13:45:00-05:00
categorias: [phpbb]
etiquetas: [extension-phpbb, auto-lock, cron]
archivos: [2017]
image:
  url: https://i.imgur.com/mBCEbSf.png
  type: png
  width: 660
  height: 263
assets: [fslightbox]
---
Extensión Auto-lock Topics para phpBB.

[![Estado de desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-auto-lock-topics/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-auto-lock-topics.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/1b2cb6aeb1214d80afbc800e31de36a0.svg?style=flat-square)](https://app.codacy.com/manual/AlfredoRamos/phpbb-ext-auto-lock-topics/dashboard)
[![Progreso de traducciones](https://badges.crowdin.net/phpbb-ext-auto-lock-topics/localized.svg)](https://crowdin.com/project/phpbb-ext-auto-lock-topics)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-auto-lock-topics.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-auto-lock-topics/master/license.txt)

Permite cerrar temas antiguos de forma automática usando una tarea cron de phpBB.

<!--more-->
### Características

- Ejecuta la tarea cron para el cierre automático de temas unicamente en los foros seleccionados
- Permite habilitar/deshabilitar el cierre automático de anuncios
- Permite habilitar/deshabilitar el cierre automático de encuestas
- Permite habilitar/deshabilitar el cierre automático de temas fijos
- Permite establecer el número de días de inactividad que ejecutan los cierres automáticos de temas
- Permite establecer la frecuencia entre los cierres automáticos de temas
- Soporte para la extensión [Move Topics When Locked](https://www.phpbb.com/customise/db/extension/move_topics_when_locked/)

### Vista previa

{{<preview src="https://i.imgur.com/aBjwVBpb.png" link="https://i.imgur.com/aBjwVBp.png" alt="Foros">}}
{{<preview src="https://i.imgur.com/mBCEbSfb.png" link="https://i.imgur.com/mBCEbSf.png" alt="Ajustes de foro">}}
{{<preview src="https://i.imgur.com/uM7dkoGb.png" link="https://i.imgur.com/uM7dkoG.png" alt="Temas cerrados">}}
{{<preview src="https://i.imgur.com/PIOhYf7b.png" link="https://i.imgur.com/PIOhYf7.png" alt="Registro de administrador">}}

*(Haga clic para ver en tamaño completo)*

### Requisitos

- PHP 7.1.3 o superior
- phpBB 3.3 o superior

### Soporte

- [**Página de descarga**](https://www.phpbb.com/customise/db/extension/auto_lock_topics/)
- [Preguntas frecuentes](https://www.phpbb.com/customise/db/extension/auto_lock_topics/faq)
- [Área de soporte](https://www.phpbb.com/customise/db/extension/auto_lock_topics/support)
- [Área de soporte en GitHub](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/issues)
- [Traducciones en Crowdin](https://crowdin.com/project/phpbb-ext-auto-lock-topics)

### Donar

{{<donate>}}

### Configuración

- Dirigase a su `Panel de Control de Administración` > `Foros` > `Administrar Foros`
- Seleccione una categoría y posteriormente un foro
- Haga clic en el botón `Editar` (engrane verde)
- Ubique la sección `Preferencias del cierre automático`
- Modifique los ajustes a su gusto
- Haga clic en `Enviar`

### Instalación

- Descargue la [última versión](https://github.com/AlfredoRamos/phpbb-ext-auto-lock-topics/releases)
- Descomprima el archivo `*.zip` o `*.tar.gz`
- Copie los archivos y directorios dentro de `{PHPBB_ROOT}/ext/alfredoramos/autolocktopics/`
- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Habilitar` y confirme

### Desinstalación

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Regrese a `Administrar extensiones` > `Auto-lock Topics` > `Borrar datos` y confirme

### Actualización

- Desinstale la extensión
- Elimine todos los archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/autolocktopics/`
- Descargue la nueva versión
- Instale la extensión
