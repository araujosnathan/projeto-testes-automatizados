######### DADO #########
Dado(/^que acesse o website "([^"]*)"$/) do |url|
  @pagina_home = HomePage.new
  @pagina_home.visit(url)
end

######### QUANDO #########
Quando(/^tocar no link de Quem Somos$/) do
  @pagina_quem_somos = @pagina_home.clicar_quem_somos
end

######### ENTãO #########
Então(/^deve ser exibida a mensagem "([^"]*)"$/) do |mensagem|
  @pagina_quem_somos.verificar_mensagem_15_anos(mensagem)
end
