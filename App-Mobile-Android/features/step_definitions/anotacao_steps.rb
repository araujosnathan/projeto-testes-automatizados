Dado(/^que usuário esteja na tela de lista de anotações$/) do
  @menu_screen = page(Menu)
  @menu_screen.pular_alerta
  @menu_screen.fechar_menu
end

Quando(/^tocar no botão de adicionar nova anotação$/) do
  @anotacao_screen = page(Anotacao)
  @anotacao_screen.adicionar_anotacao
end

Quando(/^inserir o nome da anotação$/) do
  @anotacao = CREDENCIAIS["info_anotacao".to_sym]
  @anotacao_screen.inserir_nome(@anotacao[:nome])
end

Quando(/^tocar no botão de criar$/) do
  @anotacao_screen.criar_anotacao
end

Então(/^a anotação criada deve estar visível na lista de anotações$/) do
  @anotacao_screen.anotacao_criada?(@anotacao[:nome])
end

Dado(/^que tenha uma anotação criada$/) do
  steps %{
    Quando tocar no botão de adicionar nova anotação
    E inserir o nome da anotação
    E tocar no botão de criar
  }
end

Quando(/^tocar na anotação criada$/) do
  @anotacao_screen.tocar_anotacao(@anotacao[:nome])
end

Quando(/^tocar no botao de adicionar informações$/) do
  @anotacao_screen.adicionar_anotacao
end

Quando(/^inserir novo título$/) do
  @anotacao_screen.inserir_titulo(@anotacao[:titulo])
end

Quando(/^inserir nova tag$/) do
  @anotacao_screen.inserir_tag(@anotacao[:tag])
end

Quando(/^inserir nova hora agendada$/) do
  @anotacao_screen.adicionar_hora_agendada
end

Quando(/^inserir novo limite de tempo$/) do
  @anotacao_screen.adicionar_limite_tempo
end

Quando(/^adicionar propriedade$/) do
  @anotacao_screen.inserir_propriedade(@anotacao[:nome_propriedade], @anotacao[:valor_propriedade])
end

Quando(/^tocar no botão de confirmar edição$/) do
  @anotacao_screen.finalizar_edicao
end

Então(/^a anotação deve estar com novo o título e tag criados$/) do
  @anotacao_screen.verificar_edicao(@anotacao[:titulo], @anotacao[:tag])
end
