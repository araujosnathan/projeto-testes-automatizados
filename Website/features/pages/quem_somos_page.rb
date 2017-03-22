class QuemSomosPage < SitePrism::Page

  # Declare todos os elementos da página
  element :titulo_15_anos , '.iwh-sub-title'

  def verificar_mensagem_15_anos(mensagem)
    if titulo_15_anos.text != mensagem
      fail "Mensagem '#{mensagem}' não está sendo exibida corretamente! Mensagem exibida '#{titulo_15_anos.text}'"
    end
  end

end
