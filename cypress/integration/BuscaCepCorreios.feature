#language: pt

Funcionalidade: Busca cep na homepage dos correitos

    Como um usuário
    Desejo consultar cep
    Para saber se existe e os detalhes de cada cep válido

    Contexto:
        Dado que eu acesso a homepage dos Correios

    Cenário: Buscar um cep válido
        Quando informo o cep "12606-470"
        E e clico na lupa de pesquisa
        Então vejo a página de resultado com a mensagem "Resultado da Busca por Endereço ou CEP"
        E os detalhes do cep informado "12606-470"
        E um botão para 'Nova Busta'
    
    Cenário: Buscar um cep inválido
        Quando informo o cep "12345678"
        E e clico na lupa de pesquisa
        Então vejo a página de resultado com a mensagem "Não há dados a serem exibidos"
        E um botão para 'Nova Busta'
    
    Esquema do Cenário: Consultar CEP's válidos e inválidos
        Quando informo o cep "<cep>"
        E e clico na lupa de pesquisa
        Então vejo a página de resultado com a mensagem "<mensagem>"
        E um botão para 'Nova Busta'
        E os detalhes do cep "<cep>" se o mesmo for valido "<valido>"

        Exemplos:
        |cep        | valido    | mensagem                              |
        |69153-285  | sim       | Resultado da Busca por Endereço ou CEP|
        |12606-47   | sim       | Resultado da Busca por Endereço ou CEP|
        |12345123   | não       | Não há dados a serem exibidos         |
        |1234567    | não       | Não há dados a serem exibidos         |
        |123456789  | não       | Não há dados a serem exibidos         |
        |69153-ABC  | não       | Não há dados a serem exibidos         |
        |9153 285   | não       | Não há dados a serem exibidos         |