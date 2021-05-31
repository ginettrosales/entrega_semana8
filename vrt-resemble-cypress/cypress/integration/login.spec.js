import { GhostPost } from "../page-objects/ghost-post";

describe('Login', () => {

    const ghost = new GhostPost()

    afterEach(() => {
        cy.screenshot()
    })

    it("E01-Ingresar credenciales incorrectas", () => {
        ghost.loginIncorrecto();       
    });
    
    it('E03-Ingresar solo usuario', () => {
        ghost.loginUserOnly()
        cy.get('p.main-error').should('contain', 'Please fill')

    })

    it('E02-Iniciar sesión correctamente', () => {
        ghost.login()
    })
})