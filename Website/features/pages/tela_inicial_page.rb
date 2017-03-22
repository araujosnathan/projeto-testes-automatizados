class TelaInicialPage < SitePrism::Page

  # Declare todos os elementos da página
  element :btn_disciplinas ,            '#menu_discipline_defaultDisciplinaryView b'
  element :btn_adicionar,               '#btnAdd'

  def clicar_disciplinas
    btn_disciplinas.click
  end

  def clicar_adicionar_caso
    btn_adicionar.click
    CasoDisciplinarPage.new
  end

end
