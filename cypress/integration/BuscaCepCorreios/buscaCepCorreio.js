/// <reference types='Cypress' />

Given(/^que eu acesso a homepage dos Correios$/, () => {
    cy.visit('/')
});

When(/^informo o cep "([^"]*)"$/, (cep) => {
    cy.get('#relaxation').type(cep)
        .should('have.value', cep)
});

And(/^e clico na lupa de pesquisa$/, () => {
    cy.get('form[action="https://buscacepinter.correios.com.br/app/endereco/index.php?t"]').invoke('removeAttr', 'target')
    cy.get('form[action="https://buscacepinter.correios.com.br/app/endereco/index.php?t"] > .campo > .bt-link-ic > .ic-busca-out')
        .click()
        .title().should('be.equals', 'Busca CEP')
});

Then(/^vejo a página de resultado com a mensagem "([^"]*)"$/, (mensagem) => {
	cy.get('#mensagem-resultado').should('have.text', mensagem)
});

Then(/^os detalhes do cep informado "([^"]*)"$/, (cep) => {
	cy.contains(cep).should('be.visible')
});

And(/^um botão para 'Nova Busta'$/, () => {
	cy.contains('Nova Busca').should('be.visible')
});


And(/^os detalhes do cep "([^"]*)" se o mesmo for valido "([^"]*)"$/, (cep, valido) => {
	switch (valido) {
        case 'sim':
            cy.contains(cep).should('be.visible')
            break;
    
        default:
            break;
    }
});