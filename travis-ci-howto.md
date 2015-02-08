# Ejecutando tests en Travis de un proyecto Dart

Me interesa mucho la *integración contínua*, y teniendo la oportunidad de tener
un servidor de manera gratuita para mis repositorios de GitHub no podía dejarla
pasar.

Y aún más cuando Travis soporta directamente (bueno, parece que a través de la
comunidad) el lenguaje Dart: [Dart en Travis-CI](http://docs.travis-ci.com/user/languages/dart).

## Pasos a seguir

Lo primero es ponernos a seguir la guía para hacer que cualquier proyecto nuestro
de GitHub ejecute los tests en Travis-CI: [Comenzando con Travis-CI](http://docs.travis-ci.com/user/getting-started).

### Paso 1 : loguearse en Travis-CI

Lo primero es loguearnos en Travis-CI para que él tenga acceso a nuestros repositorios
públicos de GitHub.

### Paso 2 : activar el webhook

Una vez dentro de Travis-CI, podremos ver una lista de nuestros repositorios. Para cada
uno de ellos podremos seleccionar aquellos que queremos que Travis-CI ejecute
los tests.


Una vez dentro de Travis-CI, podremos ver una lista de nuestros repositorios. Para cada
uno de ellos podremos seleccionar aquellos que queremos que Travis-CI ejecute
los tests.

### Paso 3 : añadir un archivo `.travis.yml`

Para que Travis-CI pueda ejecutar algo en tu proyecto, debemos añadir un fichero
llamado `.travis.yml` en la raiz del mismo. Este fichero decribirá qué queremos
hacer con nuestro proyecto.

Este fichero debe tener un [formato YAML válido](http://yaml-online-parser.appspot.com).
La clave más importante es `language`, ya que cada proyecto tendrá unas dependencias
muy distintas si está escrito en PHP, Ruby o Dart.

Afortunadamente, Travis-CI soporta Dart, y tiene una pequeña guía sobre las
[opciones de .travis.yml para Dart](http://docs.travis-ci.com/user/languages/dart).

Para evitar cualquier problema con `.travis.yml` existe la herramienta
[`travis-lint`](http://github.com/travis-ci/travis-lint).

### Paso 4 : lanza tu primer *build* al subir cambios

Para lanzar nuestro primer build (ejecución de los tests) debemos subir algunos cambios
a nuestro repositorio de GitHub. Estos cambios pueden ser el mismo fichero
`.travis.yml`.

### Y por último

Existen multitud de configuraciones para tus proyectos, es posible instalar otras
dependencias como base de datos, versión de la máquina virtual,... 

Para leer más, prueba a seguir otras guías más avanzadas: 
[personaliza tu build](http://docs.travis-ci.com/user/customizing-the-build), 
[instala dependencias para tu proyecto ](http://docs.travis-ci.com/user/installing-dependencies),
[configura una base de datos](http://docs.travis-ci.com/user/database-setup) y 
mucho más.

## Configuración para Dart

Para verlo en más detalle, seguir la
[guía para el lenguaje Dart de Travis-CI](http://docs.travis-ci.com/user/languages/dart).

### Versión de Dart

Lo primero de todo, la clave `language`, debe ser Dart. Y debemos seleccionar una
versión del lenguaje. A fecha de este post solo están soportadas `stable` y `dev`.

    language: dart
    dart: 
        - stable
        - dev

### Instalar dependencias para el proyecto

Si el proyecto cuenta con un fichero `pubspec.yaml`, Travis-CI ejecutará 
automáticamente `pub get` para instalar las dependencias necesarias.

### Ejecución de tests

Los tests son ejecutados automáticamente por
[Dart Test Runner](https://pub.dartlang.org/packages/test_runner).

Su instalación es muy sencilla, y es capaz de ejecutar tanto los tests que se
deban ejecutar en la VM de Dart (simplemente con el comando `dart`) como los que
se ejecutan en un navegador.

Con estos sencillos comandos instalarás y ejecutarás tus tests Dart:

    $ pub global activate test_runner
    $ pub global run test_runner

Para más opciones visitar la página de Dart Test Runner de antes.



