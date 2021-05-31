/*--------------------------------
    tests generally follow a structure
    involving 3 phases:
    - Arrange
        * visit a web page
        * query for an element
    - Act
        * interact with that element
    - Assert
        * make an assertion about page
          content
-------------------------------*/

describe('Pages', () => {
    beforeEach(() => {
        //Arrange
        cy.visit('ghost/#/signin')
        //Act
        cy.get(Cypress.env('userEmail_selector')).type(Cypress.env('email'));
        cy.get(Cypress.env('userPsswd_selector')).type(Cypress.env('pass'));
        cy.get("button#ember12").click(); 
        //Assert
        cy.url({timeout:20000}).should('eq', Cypress.env('baseUrl_2') + '#/site');
        //Act
        cy.get('a[href="#/pages/"]', {timeout:20000}).first().click();
        //Assert
        cy.url({setTimeout:15000}).should('eq', Cypress.env('baseUrl_2') + '#/pages');
        cy.get('.gh-canvas-title').contains('Pages');
        //Act
        /*
        cy.crearPage_Command('Page_1');
        cy.crearPage_Command('Page_2');
        cy.crearPage_Command('Page_3');
        cy.crearPage_Command('Page_4');
        cy.crearPage_Command('Page_5');
        */
    })

    afterEach(() => {
        cy.screenshot()
    })
/*
    after(() => {
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
      cy.eliminarPage_Command();
    })
*/
    it('E01-Crear nuevo Page como Draft', () => {
        //Page_1
        let pageTitle = 'Page_1';
        cy.crearPage_Command(pageTitle);

        //Page_2
        pageTitle = '1234';
        cy.crearPage_Command(pageTitle);

        //Page_3
        pageTitle = '#$%&?';
        cy.crearPage_Command(pageTitle);

        //Page_4
        pageTitle = '__';
        cy.crearPage_Command(pageTitle);
    })

    it('E02-Editar Page existente seleccionado', () => {
        //Edit Page_1
        let newPageTitle = 'Memo_1';
        cy.editarPage_Command(newPageTitle, 0);

        //Edit Page_2
        newPageTitle = 'Memo_2';
        cy.editarPage_Command(newPageTitle, 1);

        //Edit Page_3
        newPageTitle = 'Memo_3';
        cy.editarPage_Command(newPageTitle, 2);

        //Edit Page_4
        newPageTitle = 'Memo_4'
        cy.editarPage_Command(newPageTitle, 3);
    })

    it('E03-Publicar Page seleccionado', () => {
        cy.publicarPage_Command();
        cy.publicarPage_Command();
        cy.publicarPage_Command();
        cy.publicarPage_Command();
    })

    it('E04-Agregar Tag al Page seleccionado', () => {
        cy.tagPage_Command('ivanAmar');
        cy.tagPage_Command('ia');
        cy.tagPage_Command('oe');
        cy.tagPage_Command('123');

    })

    it('E05-Eliminar Page existente seleccionado', () => {
        cy.eliminarPage_Command();
        cy.eliminarPage_Command();
        cy.eliminarPage_Command();
        cy.eliminarPage_Command();
        cy.get('a[title="Edit this post"]').should('not.exist');
    })
})