# language: pt
Funcionalidade: Caso Disciplinar

  Contexto: Usuário deve estar logado no website
    Dado que acesse o website "https://enterprise-demo.orangehrmlive.com"


  Cenário: Usuário pode adicionar um caso disciplinar com credenciais válidas
    Quando inserir credencial de usarname válida
    E inserir credencial de senha válida
    E tocar no botão de login
    E tocar no setor de Disciplina
    E tocar no botão de Adicionar
    E inserir nome do empregado
    E inserir nome do caso
    E tocar no botão de Salvar
    E tocar no setor de Disciplina
    Então o caso disciplinar deve estar contido na lista de casos

  Cenario: Não é possível realizar login com username inválido
    Quando inserir credencial de usarname inválido
    E inserir credencial de senha válida
    E tocar no botão de login
    Então deve ser exebida tela com título "Retry Login" para tentar logar novamante

  Cenario: Não é possível realizar login com senha inválida
    Quando inserir credencial de usarname válida
    E inserir credencial de senha inválida
    E tocar no botão de login
    Então deve ser exebida tela com título "Retry Login" para tentar logar novamante
