---
title: Extensión Mailrelay para phpBB
date: 2020-09-18T00:48:17-05:00
lastmod: 2021-06-14T12:46:55-05:00
categorias: [phpbb]
etiquetas: [extension-phpbb, mailrelay, email, marketing, cron]
archivos: [2020]
image:
  url: https://i.imgur.com/mgFGzBe.jpg
  type: jpeg
  width: 1280
  height: 640
---
Extensión Mailrelay para phpBB.

[![Estado del desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-mailrelay/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-mailrelay.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/4f32454baf88449b864091d05c1a14c5.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-mailrelay/dashboard)
[![Progreso de las traducciones](https://badges.crowdin.net/phpbb-ext-mailrelay/localized.svg)](https://crowdin.com/project/phpbb-ext-mailrelay)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-mailrelay.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-mailrelay/master/license.txt)

Permite sincornizar de manera automática las direcciones de correo electrónico de los usuarios a [Mailrelay](https://mailrelay.com/) para crear, administrar y enviar campañas publicitarias.

<!--more-->
### Características

- Sincroniza los nombres y direcciones de correo electrónico de los usuarios a través de una tarea cron
- Permite establecer el ID del grupo al cual serán añadidos los usuarios
- Permite establecer el número máximo de usuarios que serán sincronizados en cada ejecución
- Permite establecer la frecuencia de las tareas de sincronización
- Excluye a los bots de forma predeterminada
- Excluye a los usuarios que no desean recibir correos masivos de forma predeterminada
- Excluye a los usuarios baneados de forma predeterminada

### Vista previa

{{<preview src="https://i.imgur.com/kkI1Z75.png" alt="Ajustes del PCA de Mailrelay" imgclass="img-fluid d-block mx-auto mb-3">}}

### Requisitos

- PHP 7.1.3 o superior
- phpBB 3.3 o superior
- El nombre del host y clave de la API de Mailrelay

### Soporte

- [**Página de descarga**](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/releases)
- [Área de soporte en GitHub](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/issues)
- [Traducciones en Crowdin](https://crowdin.com/project/phpbb-ext-mailrelay)

### Donar

{{<donate>}}

### Instalación

- Descargue la [última versión](https://github.com/AlfredoRamos/phpbb-ext-mailrelay/releases)
- Descomprima el archivo `*.zip` o `*.tar.gz`
- Copie los archivos y directorios dentro de `{PHPBB_ROOT}/ext/alfredoramos/mailrelay/`
- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Habilitar` y confirme

### API de Mailrelay

- Inicie sesión en su panel de administración de Mailrelay
- Dirígase a `Configuración` > `Claves API`
- Genere una nueva clave API si no cuenta con una
- Copie la clave API
- Opcionalmente genere un nuevo grupo en `Suscriptores` > `Grupos`
- Copie el ID del grupo

### Configuration

- Dirígase a su `Panel de Control de Administración` > `Extensiones` > `Mailrelay`
- Pegue la clave API en `Clave API`
- Pegue el ID del grupo en `ID del grupo`
- Establezca el número máximo de usuarios a sincronizar en cada ejecucuón de la tarea cron en `Tamaño del paquete de sincronización`
- Establezca el tiempo entre eventos de sincronización en `Frecuencia de sincronización`

### Desinstalación

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Regrese a `Administrar extensiones` > `Mailrelay` > `Borrar datos` y confirme

### Actualización

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Elimine todos los archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/mailrelay/`
- Descargue la nueva versión
- Suba los nuevos archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/mailrelay/`
- Habilite la extensión nuevamente
