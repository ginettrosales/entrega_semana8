# entrega_semana8
Entrega final pruebas automatizadas

## Panificacion por semana

## Semana 1
Exploratorias
Monkeys

## Semana 2, 3 y 4
Creacion e2e

## Semana 4 y 5
VRT

## Semana 6 7 8

##Validación y VRT
La validación y ejecución de las pruebas VRT de Cypress, estan conpuesta por diferentes funcionalidades, las cuales se seleccionaron para las pruebas de regresión visual de Ghost, las cuales se describen a continuación:

Estatn conforman esenarios completos dependiendo de cada funcionalidad, el código de los escenarios de pruebas de extremo a extremo implementados con Cypress y la regresión visual implementada con ResembleJS se encuentran en el directorio 

**Prerequisitos**<br>
- Una versión actualizada de Node.js instalada en su computadora.<br>
- Una versión actualizada del manejador de paquetes npm instalada en su computadora.<br>
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

En una terminal ubíquese en el directorio `entrega_semana8/vrt-resemble-cypress` y abra los archivos `cypress.json` y `cypress-3.3.0.json` en el editor de texto de su preferencia. Estos archivos tienen varios parámetros de configuración que se utilizarán para ejecutar las pruebas sobre cada una de las versiones instaladas de Ghost. El archivo `cypress.json` contiene los parámetros de configuración de la instancia con la versión `3.41.5` de Ghost y el archivo `cypress-3.3.0.json` contiene los parámetros de configuración de la instancia con la versión `3.3.0` de Ghost. Establezca el valor de los siguientes parámetros en cada uno de los archivos de acuerdo con el valor que corresponda:


- `baseUrl`
- `ghostUrl`
- `ghostAuthUrl`
- `email`
- `password`



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




