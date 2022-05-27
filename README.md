# QA Automation Challenge

## Descrição:

Projeto de automação de testes de Conultas CEP na HomePage dos Correios. Projeto simples apenas para demonstrar o uso do Cyprres e Cucumber com execução automática via GitHubActions e relatórios gerados no Dashboard do Cypress. 

*Dashboard Cypress:* https://dashboard.cypress.io/invitation/a0b0703e-ea3f-4257-bea5-846804674687


## As ferramentas utilizadas foram:
- [git](https://git-scm.com/) (utilizada versão `2.35.2`)
- [Node.js](https://nodejs.org/en/) (utilizada a versão `v16.15.0`)
- npm (utilizada a versão `8.5.5`)
- [Google Chrome](https://www.google.com/intl/pt_br/chrome/) (utilizada a versão `101.0.4951.67 (Versão oficial) 64 bits`)
- [Visual Studio Code](https://code.visualstudio.com/) (utilizada a versão `1.67.2`)


## Cenários automatizados foram
- CEP válido com 8 dígitos;
- CEP válido menor que 8 digitos e finalizado com 0;
- CEP válido/inexistente com 8 dígitos;
- CEP válido/inexistente menor que 8 digitos;
- CEP inválido maior que 8 dígitos;
- CEP inválido com caracter alfanumério;
- CEP inválido com espaço em branco entre caracteres;