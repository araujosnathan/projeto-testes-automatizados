#language: pt

Funcionalidade: Realizar verbo GET
Como desenvolvedor de backend
Quero ser capaz de realizar GET nos endpoints "/films/" e "/planets/"
Para poder recuperar todos os títulos e planetas cadastrados

Critérios de Aceitação
- Quando acessar o endpoint "/films/" usando GET deve ser capaz de exibir todos os títulos cadastrados e Status Code 200
- Quando acessar o endpoint "/planets/" passando um ID inexistente como parâmetro deve ser exebido mensagem "Not Found" e Status Code 404

  Cenario: Buscar ccontúdo do título de cada filme do endpoint "/films/"
    Dado que acesse o endpoint "/films/"
    Quando recuperar todos os títulos da estrutura "results"
    Então statusCode deve ser 200

  Cenario: Verificar ID inexistente no endpoint "/planets/"
    Dado que acesse o endploint "/planets/"
    Quando armazenar o valor do campo "count"
    E acessar novamente o endpoint "/planets/" passando um valor aleatório superior ao armazenado
    Então statusCode deve ser 404
    E mensagem exebida deve ser "Not found"
