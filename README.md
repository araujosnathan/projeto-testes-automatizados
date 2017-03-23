# Projetos de testes automatizados

Olá,

Este é um projeto para testes automatizados para aplicações Website, Webservice-API e Mobile. </br>

Para Website são usadas as tecnologias: </br>
* Cucumber
* Capybara
* Ruby

Para Webservice-API: </br>
* Cucumber
* Httparty
* Ruby

Para Mobile:
* Cucumber
* Calabash-android
* Ruby

Agora vamos entender cada projeto em particular e como executá-los. </br>

# Estrutura básica de todos os projetos

* features/screens ou features/pages -> Pastas com as classes que instanciam cada tela da aplicação - Abordagem Page Object
* features/specifications -> Pasta com os .feature - Descrição dos cenários de testes a serem automatizados
* features/step_definitions -> Pasta com o steps automatizados da aplicação
* support/ -> Pasta que dá suporte para a execução dos testes, como credenciais e configurações de antes/depois de cada cenário de teste
* Gemfile -> Este arquivo é o responsável por gerenciar todas as dependências do projeto.

Basicamente todos os projetos possuem essa estrutura para melhor organização. <br>

Para começar clone este projeto

* git clone https://github.com/nathsilv/projeto-testes-automatizados.git

Você tem o bundler instalado? Se não, você pode baixar por esse link: http://bundler.io/ </br>
Ele simplifica a sua vida para instalar as dependências do projeto. <br>

Você tem um gerenciador de versões Ruby? Se não, você pode instalar o RBENV nesse link: https://github.com/rbenv/rbenv <br>
Ele é ideal para instalar versões ruby que cada projeto precisa sem mudar a versão global do seu sistema. <br>

Instale a versão 2.3.1 do ruby
* rbenv install 2.3.1


Agora, vamos ver como executar cada projeto. <br>

# App-Mobile-Android

Este é o projeto para teste automatizados em aplicações mobile, especificamente, android. </br>
Como Executar?

No diretório do projeto:

* Execute: rbenv local 2.3.1 (para mudar a versão do ruby para o projeto)
* Execute: bundle install

Pronto, todas as dependências do projeto estão instaladas. </br>

Ainda no diretório do projeto:

* Execute: bundle exec calabash-android run apk/com.orgzly_60.apk features/specifications/anotacao.feature

PS: Emulador/Device já deve estar rodando antes de executar o comando acima.

# Webservice-API

Este é o projeto para teste automatizados em aplicações Webservice-API. </br>
Neste projeto é usado o verbo GET. </br>
Como Executar?

No diretório do projeto:

* Execute: bundle install

Pronto, todas as dependências do projeto estão instaladas. </br>

Ainda no diretório do projeto:

* Execute: bundle exec cucumber features/specifications/api.feature

# Website
Este é o projeto para teste automatizados em aplicações Website. </br>
Como Executar?

No diretório do projeto:

* Execute: rbenv local 2.3.1 (para mudar a versão do ruby para o projeto)
* Execute: bundle install

Pronto, todas as dependências do projeto estão instaladas. </br>

Ainda no diretório do projeto:

* Execute: bundle exec cucumber features/specifications/*.feature
