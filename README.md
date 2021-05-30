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
Validacion y VRT


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




