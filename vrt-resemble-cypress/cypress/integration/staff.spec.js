//<reference types="cypress-xpath" />
const faker = require('faker');

describe('Staff', () => {

    beforeEach(() => {
        cy.visit(Cypress.env('baseUrl')+'ghost/#/signin');
        cy.get("input#ember8").type(Cypress.env('email'));
        cy.get("input#ember10").type(Cypress.env('pass')); 
        cy.get("button#ember12").click(); 
        cy.url({ timeout: 20000 }).should('contain', '/site')
        cy.visit(Cypress.env('baseUrl')+'ghost/#/staff');
    })  
    afterEach(() => {
        cy.screenshot()
    })
    
    it('E01-Crear invitacion', () => { 
        cy.get("button.gh-btn.gh-btn-green").click();
        cy.get("#new-user-email").type(faker.internet.email());
        cy.get("div.modal-footer > button > span").click({force: true});
    })    

    it('E02-Reenviar acceso de registro al usuario invitado', () => { 
        cy.get(":nth-child(1) > .apps-card-app > .apps-card-right > .apps-configured > .green-hover").click({force: true});
    })
    
    it('E03-Elimina los datos del primer usuario invitado', () => { 
        cy.get(":nth-child(1) > .apps-card-app > .apps-card-right > .apps-configured > .red-hover").click({force: true});
    })

    it('E04-Accede a los datos del usuario registrado', () => { 
        cy.get(".apps-card-app > .apps-card-right > .apps-configured").click({force: true});
        cy.get(".edit-user-image").click({force: true});
        cy.visit(Cypress.env('baseUrl')+'ghost/#/staff');
        cy.get(".w3").click({force: true});                
    })
})
