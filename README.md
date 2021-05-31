# entrega_semana8
Entrega final pruebas automatizadas. En este repositorio se encuentra cada una de las pruebas escogidas para la [estrategia de pruebas](https://uniandes-my.sharepoint.com/:w:/g/personal/g_rosales_uniandes_edu_co/EU8LNDZChERMmZw8U5bi8PYBTs1paXTjvR4MpXMnHDHL7w?e=UnN42p) que se ejecutará en 8 semanas. La aplicación a probrar es ### Ghost v3.42.5.

Cada disrectorio contempla la tecnica de prueba que se utilizara segun la iteracuion en curso.

#### Iteracion 1
- Pruebas explratorias manuales. `entrega_semana8/Exploratorias`
- Pruebas de Reconocimiento `entrega_semana8/Reconocimiento`

#### Iteración 2
- Pruebas de extremo a extremo (E2E) `entrega_semana8/e2e`

#### Iteración 3
- Pruebas de validacion de datos `entrega_semana8/validacion_de_datos`

#### Iteración 4
- Pruebas de regresión visual (VRT) `entrega_semana8/vrt-resemble-cypress`

## Exploratorias manuales

Detro del directorio `entrega_semana8/Exploratorias` se encuentra el documento `inventario-pruebas-exploratorias_v3.42.5.xlsx`. En el mismo se listan las pruebas ejecutadas que sirven de referencia para crear el oráculo explícito. Dentro del directorio se puede encontrar las evidencias que soportan y describen los pasos ejecutados para la reproduccion de las pruebas.

## Pruebas de reconocimiento automáticas
### Monkeys
#### Prerequisitos
- Versión actualizada de `Node.js` instalada en su computadora. Documentación: https://nodejs.org/es/download/
- Versión actualizada del manejador de paquetes npm instalada en su computadora.
- Manejador de versiones `Git` instalado en su computadora (opcional).
- Tener Ghost v3.42.5 instalado e incicar con el comando `ghost start`

#### Instalación
- Crear el directorio donde se ejecutará la herramienta
- Dento del directorio clonar el repositorio o descargar el archivo `.zip`
- Ingresar al siguiente directorio `entrega_semana8/Reconocimiento/monkey-cypress`
- Instalar dependencias. Ejecutar `npm install`

#### Configuración
- Modificar `baseUrl` en `monkey-config.json`
- Para la modificar mas valores puede consultar el siguiente tutorial https://misovirtual.virtual.uniandes.edu.co/codelabs/monkey-cypress-tutorial/index.html#0

#### Ejecución
- Ejecutar `run --config-file ./monkey-config.json`

### Rippers
#### Prerequisitos
- Versión actualizada de `Node.js` instalada en su computadora. Documentación: https://nodejs.org/es/download/
- Versión actualizada del manejador de paquetes npm instalada en su computadora.
- Manejador de versiones `Git` instalado en su computadora (opcional).
- Tener Ghost v3.42.5 instalado e incicar con el comando `ghost start`

#### Instalación
- Dento del directorio clonar el repositorio o descargar el archivo `.zip`
- Ingresar al siguiente directorio `entrega_semana8/Reconocimiento/RIPuppetCoursera`
- Instalar dependencias. Ejecutar `npm install`

#### Configuración
- Modificar `baseUrl` en `config.json`
- Para la modificar mas valores puede consultar el siguiente tutorial https://misovirtual.virtual.uniandes.edu.co/codelabs/web-gui-ripper/index.html#0

#### Ejecución
- Ejecutar `node index.js`

#### Ver reporte de resultados
- Leugo de ejecutar la herramieta se generara el reporte de los resultados
- Ingregar al directorio `/results`
- Instalar la libreria para crear el servidor `npm install -g http-servernpm install -g http-server`
- Para activar servidor ejecutar `http-server`
- Ahora puede acceder desde un navegador a la dirección que se le indica en la consola. Ejemplo: http://127.0.0.1:8080/
- Seleccionar el directorio del reporte
- Seleccionar `report.html` para ver los resultados

## Ejecución de pruebas E2E

Las pruebas E2E de Cypress conforman esenarios completos dependiendo de cada funcionalidad 
que se vaya a probar. Para este tipo de pruebas se utiliza el patrón Page Object.
Para ejecutar estas pruebas debe seguir los siguientes pasos:

- Instale Cypress siguiendo la documentación:  https://www.cypress.io/
- Clone el repositorio en la ubicación que desee, mediante el comando 'git clone https://github.com/ginettrosales/entrega_semana8.git'
- Inicie la App Ghost con el comando ghost start
- Ingrese a la carpeta e2e del proyecto, después ingrese a la carpeta cypress-tests.
- Inicie una consola desde el directorio cypress-tests y ejecute el comando 'npm install'.
- Ejecute el comando 'cypress run --headless' o 'cypress open' (Si ejecuta el segundo comando se desplegará una consola en un navegador, aquí deberá dirijirse a la pestaña de Tests y seleccionar la prueba que quiera ejecutar).
- Podrá Visualizar los resultados de las pruebas en la consola si ejecutó el primer comando, o en la consola de Cypress si ejecuto el segundo comando.
- Si se dirige a la carpeta del repositorio cypress-tests/cypress/screenshots podrá encontrar capturas de pantalla de las pruebas realizadas.
- Si se dirige a la carpeta del repositorio cypress-tests/cypress/videos podrá encontrar videos con el escenario de pruebas ejecutado paso a paso.

Consideraciones:
- Debe haber creado un usuario en gost para el inicio de sesión.
- Las credenciales de este usuario se deben configurar en el archivo cypress.json, en las variables de entorno 'env'. (Este archivo se encuentra dentro de la carpeta cypress-tests)

## Pruebas de regresión visual

Los escenarios seleccionados para las pruebas de regresión visual pertenecen a funcionalidades de Ghost descritas a continuación:<br> 

#### Funcionalidades a comparar `Resembler.js`
- Login - E01 Ingresar credenciales incorrectas
- Post  - E01 Crear post y publicar
- Pages - E01 Crear nuevo page como draf
- Staff - E01 Crear una invitacion
- Tags  - E01 Editar un tag publico

El código de los escenarios de pruebas de extremo a extremo implementados con Cypress y la regresión visual implementada con ResembleJS se encuentran en el directorio [vrt-resemble-cypress](vrt-resemble-cypress).

#### Prerequisitos

- Una versión actualizada de Node.js instalada en su computadora.
- Una versión actualizada del manejador de paquetes npm instalada en su computadora. 
- Instalar las versiones 3.3.0 y 3.42.5 de Ghost en su máquina local siguiendo el tutorial del siguiente enlace [Tutorial - Ghost](https://misovirtual.virtual.uniandes.edu.co/codelabs/ghost-local-deployment/index.html#0). Tenga en cuenta la asignación de un puerto diferente a cada instancia de Ghost. Para lograr este propósito, en la raíz del directorio de instalación de cada una de las instancias de Ghost abra el archivo `config.development.json` y establezca los valores de los atributos `url` y `port` tomando cómo referencia el siguiente ejemplo:

`"url": "http://localhost:2368/",`
  `"server": {`
    `"port": 2368,`
    `"host": "127.0.0.1"`
  `},`
    
- Una vez realizados estos ajustes, debe detener y reiniciar Ghost para que los cambios se apliquen.
- Crear una cuenta de usuario en cada una de las instancias de Ghost (Incluído en el tutorial del anterior punto).

#### Instalar librerías

- Clone el repositorio de pruebas en su máquina utilizando uno de los siguientes comandos:

`git clone https://github.com/ginettrosales/entrega_semana8.git`

ó

`git clone git@github.com:ginettrosales/entrega_semana8.git`

- Ahora navegue hasta el subdirectorio `entrega_semana8/vrt-resemble-cypress` con el siguiente comando:

`cd entrega_semana8/vrt-resemble-cypress/`

- Finalmente instale las librerías requeridas:

`npm install`

#### Configuración de parámetros de ejecución

En una terminal ubíquese en el directorio `entrega_semana8/vrt-resemble-cypress` y abra los archivos `cypress.json` y `cypress-3.3.0.json` en el editor de texto de su preferencia. Estos archivos tienen varios parámetros de configuración que se utilizarán para ejecutar las pruebas sobre cada una de las versiones instaladas de Ghost. El archivo `cypress.json` contiene los parámetros de configuración de la instancia con la versión `3.42.5` de Ghost y el archivo `cypress-3.3.0.json` contiene los parámetros de configuración de la instancia con la versión `3.3.0` de Ghost. Establezca el valor de los siguientes parámetros en cada uno de los archivos de acuerdo con el valor que corresponda:

- `baseUrl`
- `email`
- `pass`
- `baseUrl_2`
- `userEmail`
- `userPsswd`
- `userEmail_selector`
- `userPsswd_selector`
- `loginButton_selector`

#### Ejecución de las pruebas E2E

En una terminal ubíquese en el directorio `entrega_semana8/vrt-resemble-cypress` y ejecute el siguiente comando para correr las pruebas de extremo a extremo, recopilar las evidencias durante la ejecución de cada paso, comparar las diferencias entre las imágenes recopiladas de cada versión y obtener un reporte consolidado con el resultado:

- Ahora navegue hasta el subdirectorio `entrega_semana8/vrt-resemble-cypress` con el siguiente comando:

`cd entrega_semana8/vrt-resemble-cypress/`

- Ejecute el siguiente comando para correr las pruebas de extremo a extremo con la versión `3.3.0` de Ghost 

`cypress run -C cypress-3.3.0.json -b chrome`

- Luego ejecute el siguiente comando para correr las pruebas de extremo a extremo con la versión `3.42.5` de Ghost 

`cypress run -C cypress.json -b chrome`

- Por ultimo ejecute el siguiente comando para comprobar que los resultados de la prueba salgan de forma adecuada:

`node index.js`

Cuando finalice la ejecución del script vaya al directorio `cypress/results` y abra el archivo `report.html` para ver el resultado de la regresión visual.

## Validacion de Datos

### Pruebas e2e con pool de datos, pseudo aleatorios y aleatorios

Este repositorio contiene los artefactos construídos para las pruebas e2e con generacion de datos pool de datos prio, pseudo aleatorios y aleatorio, para la consecución de los objetivos definidos en la estrategia de pruebas sobre las versiones v3.42.5 de la interfaz de usuario de administración de Ghost. Los archivos necesarios para su ejecución podrá encontrarlos en el siguiente enlace:

* [Validación de Datos](./validacion_de_datos/) 

#### Prerequisitos
Una versión actualizada de Node.js instalada en su computadora.
Una versión actualizada del manejador de paquetes npm instalada en su computadora.
Instalar la versión 3.42.5 de Ghost en su máquina local siguiendo el tutorial del siguiente enlace Tutorial - [Ghost](https://misovirtual.virtual.uniandes.edu.co/codelabs/ghost-local-deployment/index.html#4)  
Crear una cuenta de usuario en Ghost (Incluído en el tutorial del anterior punto).

Instalar librerías
Clone el repositorio de pruebas utilizando uno de los siguientes comandos:
git clone https://github.com/ginettrosales/entrega_semana8.git

Ahora navegue hasta el subdirectorio entrega_semana8 con el siguiente comando:
cd entrega_semana8/validacion_de_datos

Finalmente instale las librerías requeridas:
npm install

#### Configuración de parámetros de ejecución
En una terminal ubíquese en el directorio entrega_semana8 y abra el archivo cypress.json en el editor de texto de su preferencia. Establezca el valor de las variables email y password con los valores que utilizó cuando creó la cuenta de usuario en Ghost.

#### Ejecución de las pruebas E2E
En una terminal ubíquese en el directorio entrega_semana8 y ejecute el siguiente comando para probar todos los escenarios:

`./node_modules/.bin/cypress run -C cypress.json` o `cypress open` y ejecute la suite de prueba
