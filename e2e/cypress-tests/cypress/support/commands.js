// ***********************************************
// This example commands.js shows you how to
// create various custom commands and overwrite
// existing commands.
//
// For more comprehensive examples of custom
// commands please read more here:
// https://on.cypress.io/custom-commands
// ***********************************************
//
//
// -- This is a parent command --
// Cypress.Commands.add('login', (email, password) => { ... })
//
//
// -- This is a child command --
// Cypress.Commands.add('drag', { prevSubject: 'element'}, (subject, options) => { ... })
//
//
// -- This is a dual command --
// Cypress.Commands.add('dismiss', { prevSubject: 'optional'}, (subject, options) => { ... })
//
//
// -- This will overwrite an existing command --
// Cypress.Commands.overwrite('visit', (originalFn, url, options) => { ... })
Cypress.Commands.add('crearPage_Command', (pageTitle='(Untitled)') => {
    cy.get('[href="#/editor/page/"]').first().click();
    cy.url().should('eq', Cypress.env('baseUrl_2') + '#/editor/page');
    cy.get('div.gh-koenig-editor-pane.flex.flex-column.mih-100 > textarea').type(pageTitle + '{enter}');
    //cy.get('span.fw4.midgrey-l2').first().click({force:true});   //just for saving changes
    cy.get('[href="#/pages/"]', {timeout:20000}).first().then(href => {
        href.click();
    });
    cy.url({timeout:20000}).should('eq', Cypress.env('baseUrl_2') + '#/pages');
    cy.get('section.content-list').contains(pageTitle);
})

Cypress.Commands.add('eliminarPage_Command', () => {
    cy.get('li.gh-list-row.gh-posts-list-item > a').first().click({force: true})
    cy.get('button.post-settings').click({force:true})
    cy.get('form > .gh-btn > span').click({force:true})
    cy.get('button.gh-btn.gh-btn-red.gh-btn-icon.ember-view').first().click({force:true})
    cy.visit(Cypress.env('baseUrl_2') + '#/pages')
})

Cypress.Commands.add('editarPage_Command', (newPageTitle, pos) => {
    cy.get('li.gh-list-row.gh-posts-list-item > a').eq(pos).click({force:true});
    cy.get('div.gh-koenig-editor-pane.flex.flex-column.mih-100 > textarea').clear().type(newPageTitle);
    //cy.get('div.ember-view').first().click({force:true});   //just for saving changes
    cy.get('button.post-settings', {timeout:20000}).click({force:true})
    cy.get('[href="#/pages/"]', {timeout:20000}).first().then(href => {
        href.click();
    });
    cy.url({timeout:20000}).should('eq', Cypress.env('baseUrl_2') + '#/pages');
    cy.get('section.content-list').contains(newPageTitle);
})

Cypress.Commands.add('publicarPage_Command', () => {
    cy.get('li.gh-list-row.gh-posts-list-item > a').first().click({force:true});
    cy.get('div.gh-publishmenu.ember-view > div > span').click({force:true});
    cy.get('button.gh-btn.gh-btn-blue.gh-publishmenu-button.gh-btn-icon.ember-view').click({force:true});
    //cy.get('div.ember-view').first().click({force:true});   //just for saving changes
    cy.get('[href="#/pages/"]', {timeout:20000}).first().then(href => {
        href.click();
    });
    cy.url({timeout:20000}).should('eq', Cypress.env('baseUrl_2') + '#/pages');
    cy.get('div > span.gh-content-status-published.nowrap').should('exist');
})

Cypress.Commands.add('tagPage_Command', (nuevoTag) => {
    cy.get('li.gh-list-row.gh-posts-list-item > a').first().click({force:true});
    cy.get('button.post-settings').click({force:true});
    cy.get('input.ember-power-select-trigger-multiple-input').first().type(nuevoTag + '{enter}');
    //cy.get('div.ember-view').first().click({force:true});   //just for saving changes
    cy.get('div.gh-publishmenu.ember-view > div > span', {timeout:20000}).click({force:true});
    cy.get('[href="#/pages/"]', {timeout:20000}).first().then(href => {
        href.click();
    });
    cy.get('.gh-btn-red > span').first().click({force:true});
    cy.url({timeout:20000}).should('eq', Cypress.env('baseUrl_2') + '#/pages');
})