# language: pt

Funcionalidade:: Anotação

Como usuário do aplicativo Orgzly
Quero ser capaz de criar e editar minhas anotações
Para ter o controle de minhas atividades diárias

Critérios de Aceitação
- Quando usuário criar uma nova anotação a mesma deve estar visível na tela de lista de anotações.
- Usuário deve ser capaz de editar as informações contidas na anotação criada.

  Contexto:: Usuário deve estar na tela inicial do aplicativo
    Dado que usuário esteja na tela de lista de anotações

  Cenario:: Como usuário posso criar e validar uma anotação
    Quando tocar no botão de adicionar nova anotação
    E inserir o nome da anotação
    E tocar no botão de criar
    Então a anotação criada deve estar visível na lista de anotações

  Cenario: Como usuário posso editar informações de anotação criada
    Dado que tenha uma anotação criada
    Quando tocar na anotação criada
    E tocar no botao de adicionar informações
    E inserir novo título
    E inserir nova tag
    E inserir nova hora agendada
    E inserir novo limite de tempo
    E adicionar propriedade
    E tocar no botão de confirmar edição
    Então a anotação deve estar com novo título e tag criados
