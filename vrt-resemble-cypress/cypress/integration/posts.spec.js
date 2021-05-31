import { GhostPost } from "../page-objects/ghost-post";

describe('Posts', () => {
    
    const ghost = new GhostPost()

    beforeEach(() => {
        ghost.login()
        cy.url({ timeout: 20000 }).should('contain', '/site')
        ghost.goPosts()
    })

    afterEach(() => {
        cy.screenshot()
    })

    it('E01-Crear nuevo post y publicar', () => {
        ghost.createDraftPost()
        ghost.goPosts()
        ghost.selectLastedPost()
        ghost.publishPost()
        cy.get('div.gh-publishmenu-dropdown button.gh-publishmenu-button')
            .should('have.class', 'gh-btn-green')
    })

    it('E02-Editar titulo del Post', () => {
        ghost.selectLastedPost()
        cy.get('.gh-editor-title').clear()
        cy.get('.gh-editor-title').type('The title have been edited')
        ghost.publishPost()
        cy.get('div.gh-publishmenu-dropdown button.gh-publishmenu-button')
            .should('have.class', 'gh-btn-green')
        cy.get('.gh-editor-title')
            .should('have.value', 'The title have been edited')
    })

    it('E03-Cambiar el estado del Post a unpublished', () => {
        ghost.selectPublishedPost()
        ghost.changePostStatus()
        cy.get('footer.gh-publishmenu-footer button.gh-publishmenu-button')
            .should('have.class', 'gh-btn-green')
    })

    it('E04-Eliminar post', () => {
        ghost.selectLastedPost()
        ghost.openPostSettings()
        cy.get('button.settings-menu-delete-button').click()
        cy.get('div.modal-footer button.gh-btn-red > span').contains('Delete').click()
        cy.url({ timeout: 10000 })
            .should('contain', '/posts')
    })
})