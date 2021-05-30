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
En cuanto pruebas E2E se utilizan dos herramientas, las cuales son Cypress y Kraken.

# Ejecución de pruebas en Cypress
Las pruebas E2E de Cypress conforman esenarios completos dependiendo de cada funcionalidad 
que se vaya a probar. Para este tipo de pruebas se utiliza el patrón Page Object.
Para ejecutar estas pruebas debe seguir los siguientes pasos:

- Instale Cypress siguiendo la documentación:  https://www.cypress.io/
- Clone el repositorio en la ubicación que desee, mediante el comando 'git clone https://github.com/ginettrosales/entrega_semana8.git'
- Inicie la App Ghost con el comando ghost start
- Ingrese a la carpeta e2e del proyecto, después ingrese a la carpeta cypress-tests.
- Inicie una consola desde el directorio cypress-tests y ejecute el comando 'npm install'.
- Ejecute el comando 'cypress run --headless' o 'cypress open' (Si ejecuta el segundo comando se desplegará una consola en un navegador, aquí deberá dirijirse a la prueba que necesite ejecutar).
- Podrá Visualizar los resultados de las pruebas en la consola si ejecutó el primer comando, o en la consola de Cypress si ejecuto el segundo comando.

Consideraciones:
- Debe haber creado un usuario en gost para el inicio de sesión.
- Las credenciales de este usuario se deben configurar en el archivo cypress.json, en las variables de entorno 'env'. (Este archivo se encuentra dentro de la carpeta cypress-tests)

# Ejecución de pruebas en Kraken
Las pruebas E2E de Kraken conforman escenarios completos dependiendo de cada funcionalidad
que se va a probar. Este tipo de pruebas utilizan pruebas BDT para un mayor entendimiento
no solo por parte de los testers sino también del cliente.
Para ejecutar estas pruebas debe seguir los siguientes pasos:
- Clone el repositorio en la ubicación que desee, mediante el comando 'git clone https://github.com/ginettrosales/entrega_semana8.git'
- Ingrese a la carpeta e2e del proyecto
- Instale Kraken en el directorio anterior siguiendo la documentación: https://thesoftwaredesignlab.github.io/KrakenMobile/#publications
- En este punto usted debe tener la carpeta de Kraken y kraken-tests en el mismo directorio (Junto con la de cypress-tests).
- Ingrese a la carpeta de kraken-tests, y ejecute el comando 'bundle exec kraken-mobile run --properties=features/web/data.json'.
- Las pruebas se ejecutaran automáticamente desplegando navegadores.
- Podrá visualizar los resultados en el directorio reports.




