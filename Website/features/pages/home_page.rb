class HomePage < SitePrism::Page

  # Declare todos os elementos da página
  element :link_quem_somos, '.menu-item-2960 .link_text'

  def clicar_quem_somos
    link_quem_somos.click
    QuemSomosPage.new
  end

end
