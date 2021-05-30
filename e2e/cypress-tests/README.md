# cypress-test

### Instalcion
- Descargar repositorio
- Ir al directorio raiz de cypress `cd cypress-test`
- Instalar dependiencias `npm install`

### Configuracion
- Cambiar el valor de `baseUrl` y `baseUrl_2` en el `cypress.json` a la URL de la instacia de Ghost a probar
- Cambiar el valor de `email` y `pass` en el archivo `cypress.jon` con las credeciales que corresponden al usuario administrador
- Cambiar el valor de la version en la carpeta de screenshots  `"screenshotsFolder":"cypress/screenshots/v3.42.5"` segun se quiera ejecutar en el `cypress.jon`

### Ejecucion
- Correr `cypress open` seleccionar la carteta donde se encuentran las pruebas
- Ejecutar el archivo `.spec.js` que se quiere ejecutar
