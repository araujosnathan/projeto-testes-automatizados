require "httparty"

class TestAPI
  include HTTParty
  base_uri 'http://swapi.co/api/'
end


Dado(/^que acesse o endpoint "([^"]*)"$/) do |endpoint|
  @response = TestAPI.get(endpoint)
end

Quando(/^recuperar todos os títulos da estrutura "([^"]*)"$/) do |estrutura|
  @array_titulos = @response[estrutura]
  @array_titulos.each do |filme|
    puts filme['title']
  end
end

Dado(/^que acesse o endploint "([^"]*)"$/) do |endpoint|
  @response = TestAPI.get(endpoint)
end

Quando(/^armazenar o valor do campo "([^"]*)"$/) do |count|
  @valor_count = @response[count]
end

Quando(/^acessar novamente o endpoint "([^"]*)" passando um valor aleatório superior ao armazenado$/) do |endpoint|
  @response = TestAPI.get(endpoint + (@valor_count+1).to_s)
end

Então(/^statusCode deve ser (\d+)$/) do |statusCode|
  expect(@response.code).to eql(statusCode.to_i)
end

Então(/^mensagem exebida deve ser "([^"]*)"$/) do |mensagem_de_erro|
  expect(@response['detail']).to eql(mensagem_de_erro)
end
