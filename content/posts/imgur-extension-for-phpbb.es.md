---
title: Extensión Imgur para phpBB
date: 2017-05-13T18:29:16-05:00
lastmod: 2020-12-25T13:46:00-05:00
categorias: [phpbb]
etiquetas: [extension-phpbb, imgur, bbcode]
archivos: [2017]
image:
  url: https://i.imgur.com/xxCEse7.png
  type: png
  width: 545
  height: 306
assets: [fslightbox]
---
Extensión Imgur para phpBB.

[![Estado de desarrollo](https://img.shields.io/github/workflow/status/AlfredoRamos/phpbb-ext-imgur/GitHub%20Actions%20CI?style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-imgur/actions)
[![Última versión estable](https://img.shields.io/github/tag/AlfredoRamos/phpbb-ext-imgur.svg?label=stable&style=flat-square)](https://github.com/AlfredoRamos/phpbb-ext-imgur/releases)
[![Calidad de código](https://img.shields.io/codacy/grade/e45e4f83b6724dfe97c43b596ec61d3b.svg?style=flat-square)](https://app.codacy.com/gh/AlfredoRamos/phpbb-ext-imgur/dashboard)
[![Progreso de traducciones](https://badges.crowdin.net/phpbb-ext-imgur/localized.svg)](https://crowdin.com/project/phpbb-ext-imgur)
[![Licencia](https://img.shields.io/github/license/AlfredoRamos/phpbb-ext-imgur.svg?style=flat-square)](https://raw.githubusercontent.com/AlfredoRamos/phpbb-ext-imgur/master/license.txt)

Agrega un nuevo botón para subir imágenes a Imgur y la añade automáticamente al tema, mensaje privado o la firma del usuario A través del Panel de Control del Administrador se puede controlar si se desea mostrar la imagen como texto plano o usando BBCode como URL, imagen (default) o miniatura.

<!--more-->
### Características

- Cambia los datos de la API a través del PCA
- Opcionalmente, especifica un álbum en donde se subirán todas las imágenes
- Compatible con la extensión ABBC3
- Protección contra ataques CSRF
- Registro de Administrador cuando se realizan cambios en la configuración
- Insertar BBCode o texto en la posición del cursor
- Enlace de descarga de copia de seguridad del álbum en el PCA Album
- Barra de progreso al subir imágenes
- Compatible con la extensión QuickReply Reloaded
- Compatible con la extensión mChat
- Menú desplegable en el botón (al dar clic derecho) de subida de imagen
- Pestaña Imgur en las opciones de publicación para elegir entre las distintas opciones de salida
- Almacenamiento de ciertas preferencias de usuario usando localStorage y sessionStorage
- Ajustes en el PCA para habilitar o deshabilitar los distintos tipos de salida
- Subir imágenes arrastrando y soltando, en la pestaña Imgur del editor completo

### Vista previa

{{<preview src="https://i.imgur.com/FDKbWoqb.png" link="https://i.imgur.com/FDKbWoq.png" alt="Ajustes del PCA">}}
{{<preview src="https://i.imgur.com/xxCEse7b.png" link="https://i.imgur.com/xxCEse7.png" alt="Ajustes de la API">}}
{{<preview src="https://i.imgur.com/CKcYnY2b.png" link="https://i.imgur.com/CKcYnY2.png" alt="Ajustes de salida">}}
{{<preview src="https://i.imgur.com/8C7sMR2b.png" link="https://i.imgur.com/8C7sMR2.png" alt="Tema">}}
{{<preview src="https://i.imgur.com/YZNmOxeb.png" link="https://i.imgur.com/YZNmOxe.png" alt="Menú de salida">}}
{{<preview src="https://i.imgur.com/a7UUoEYb.png" link="https://i.imgur.com/a7UUoEY.png" alt="Pestaña de salida">}}

*(Haga clic para ver en tamaño completo)*

### Requisitos

- PHP 7.1.3 o superior
- phpBB 3.3 o superior
- Composer (únicamente para desarrollo)
- Datos de la API de Imgur (`client_id` y `client_secret`)

### Soporte

- [**Página de descarga**](https://www.phpbb.com/customise/db/extension/imgur/)
- [Preguntas frecuentes](https://www.phpbb.com/customise/db/extension/imgur/faq)
- [Área de soporte](https://www.phpbb.com/customise/db/extension/imgur/support)
- [Área de soporte en GitHub](https://github.com/AlfredoRamos/phpbb-ext-imgur/issues)
- [Traducciones en Crowdin](https://crowdin.com/project/phpbb-ext-imgur)

### Donar

{{<donate>}}

### API de Imgur

- Registrese en Imgur, si no tiene una cuenta
- Registre una aplicación Imgur en https://api.imgur.com/oauth2/addclient
- Ingrese el nombre de la aplicación
- Seleccionr *OAuth 2 authorization with a callback URL*
- Asegúrese que la URL `http://domain.tld/app.php/imgur/authorize` funcione, remplazando `domain.tld` con su propio dominio, y use `https://` si cuenta con un certificado SSL instalado y configurado
- Ingrese la URL anterior en el campo *Authorization callback URL*
- Ingrese su email y una breve descripción
- Después de enviar los datos, obtendrá un `client_id` y `client_secret`

### Configuración

- Dirígase a su `Panel de Control de Administración` > `Extensiones` > `Ajustes de Imgur`
- Ingrese el `client_id` y `client_secret`
- Opcionalmente ingrese el ID del álbum
- Haga clic en enviar
- Nuevamente en los ajustes de Imgur, haga clic en el enlace de autorización
- Una nueva ventana se abrirá para autorizar la aplicación
- Inicie sesión en su cuenta de Imgur para autorizar el acceso a la misma
- La ventana se cerrará por si sola al finalizar, o mostrará un mensaje de error

Para personalizar la apariencia:

- Ingrese a `{PHPBB_ROOT}/ext/alfredoramos/imgur/`
- Copie el directorio `styles/prosilver/` a `styles/{ESTILO}/`
- Realice las modificaciones necesarias al archivo `styles/{ESTILO}/theme/css/imgur.css`

**Nota:** Si su estilo no hereda de `prosilver`, necesitará seguir los pasos anteriores inclusive si no desea realizar ningúna modificación a los archivos.

### Instalación

- Descargue la [última versión](https://github.com/AlfredoRamos/phpbb-ext-imgur/releases)
- Descomprima el archivo `*.zip` o `*.tar.gz`
- Copie los archivos y directorios dentro de `{PHPBB_ROOT}/ext/alfredoramos/imgur/`
- Ejecute el comando `composer install --prefer-dist --no-dev` dentro de `{PHPBB_ROOT}/ext/alfredoramos/imgur/`
- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Habilitar` y confirme

### Desinstalación

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Regrese a `Administrar extensiones` > `Imgur` > `Borrar datos` y confirme

### Actualización

- Dirígase a su `Panel de Control de Administración` > `Personalizar` > `Administrar extensiones`
- Haga clic en `Deshabilitar` y confirme
- Elimine todos los archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/imgur/`
- Descargue la nueva versión
- Suba los nuevos archivos dentro de `{PHPBB_ROOT}/ext/alfredoramos/imgur/`
- Habilite la extensión nuevamente
