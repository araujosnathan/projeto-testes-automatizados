#language: pt

Funcionalidade: Quem Somos

Como usuário do site
Quero ser capaz de acessa a página "Quem Somos"
Para obter informações sobre a empresa

Critérios de Aceitação
- Quando acessar a página "Quem Somos" deve ser exebida a mensagem "mais de 15 anos de atuação"

  Contexto: Usuário deve estar na página inicial do website
    Dado que acesse o website "http://www.inmetrics.com.br"

  Cenario: Como usuário posso acessar a página Quem Somos para obter informações
    Quando tocar no link de Quem Somos
    Então deve ser exibida a mensagem "MAIS DE 15 ANOS DE ATUAÇÃO"
