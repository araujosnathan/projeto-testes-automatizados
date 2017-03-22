######### DADO #########

######### QUANDO #########
Quando(/^inserir credencial de usarname válida$/) do
  @pagina_login = LoginPage.new
  @pagina_login.inserir_username(CONFIG['username_valido'])
end

Quando(/^inserir credencial de senha válida$/) do
  @pagina_login.inserir_senha(CONFIG['senha_valida'])
end

Quando(/^tocar no botão de login$/) do
  @pagina_inicial = @pagina_login.clicar_login
end

Quando(/^tocar no setor de Disciplina$/) do
  @pagina_inicial.clicar_disciplinas
end

Quando(/^tocar no botão de Adicionar$/) do
  @pagina_casos_disciplinar = @pagina_inicial.clicar_adicionar_caso
end

Quando(/^inserir nome do empregado$/) do
  @pagina_casos_disciplinar.inserir_nome_empregado(CONFIG['nome_empregado'])
end

Quando(/^inserir nome do caso$/) do
  @pagina_casos_disciplinar.inserir_nome_caso(CONFIG['nome_caso'])
end

Quando(/^tocar no botão de Salvar$/) do
  @pagina_casos_disciplinar.clicar_salvar
end

Quando(/^inserir credencial de usarname inválido$/) do
  @pagina_login = LoginPage.new
  @pagina_login.inserir_username(CONFIG['username_invalido'])
end

Quando(/^inserir credencial de senha inválida$/) do
  @pagina_login.inserir_senha(CONFIG['senha_invalida'])
end
######### ENTãO #########

Então(/^o caso disciplinar deve estar contido na lista de casos$/) do
  @pagina_casos_disciplinar.veriricar_criacao_sucesso(CONFIG['nome_caso'])
end

Então(/^deve ser exebida tela com título "([^"]*)" para tentar logar novamante$/) do |mensagem|
  @pagina_login.verificar_retry_login(mensagem)
end
