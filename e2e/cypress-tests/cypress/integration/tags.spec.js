import { GhostTag } from "../page-objects/ghost-tags";
import { LoremIpsum } from "lorem-ipsum";

describe('Tags', () => {

    const ghost = new GhostTag()
    const lorem = new LoremIpsum()

    beforeEach(() => {
        ghost.login()
        cy.url({ timeout: 20000 }).should('contain', '/site')
        ghost.goTags()
      
    })
    
    afterEach(() => {
        cy.screenshot()
    })

    it('E01-Editar un tag publico', () => {
        ghost.createTag()
        ghost.selectTag()
        cy.get('#tag-name').clear()
        cy.get('#tag-name').type('New Tag')
        cy.get('#tag-slug').clear()
        cy.get('#tag-slug').type('ntag')
        cy.get('#tag-description').clear()
        cy.get('#tag-description').type('This is a new tag')
        cy.get('section.view-actions > button').click({ force: true })
        cy.get('section.view-actions > button')
            .should('have.class', 'gh-btn-green')
        
       
    })

    it('E02-Editar un tag interno', () => {
        ghost.createTag(true)
        ghost.selectInternalTag()
        cy.get('#tag-name').clear()
        cy.get('#tag-name').type('#EditedTag')
        cy.get('#tag-slug').clear()
        cy.get('#tag-slug').type('etag')
        cy.get('#tag-description').clear()
        cy.get('#tag-description').type('This is a edited tag')
        cy.get('section.view-actions > button').click({ force: true })
        cy.get('section.view-actions > button')
            .should('have.class', 'gh-btn-green')
        
       
    })

    it('E03-Eliminar un tag publico', () => {
        ghost.createTag()
        ghost.selectTag()
        cy.get('button.gh-btn-red > span').contains('Delete').click({ force: true })
        cy.get('section.modal-content').find('div.modal-footer').find('button.gh-btn-red > span').contains('Delete').click({ force: true })
        cy.url({ timeout: 10000 })
            .should('contain', '/tags')
       
    })

    it('E04-Ingresar demasiados caracteres en descripción de tag', () => {
        ghost.createTag()
        ghost.selectTag()
        cy.get('#tag-description').clear()
        cy.get('#tag-description').type(lorem.generateParagraphs(2))
        cy.get('section.view-actions > button').click({ force: true })
        cy.get('#tag-description').next().should('contain', 'Description cannot')

    })
})