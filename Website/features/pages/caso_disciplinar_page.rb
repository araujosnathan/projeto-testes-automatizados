class CasoDisciplinarPage < SitePrism::Page

  # Declare todos os elementos da página
  element :campo_nome_empregado , '#addCase_employeeName_empName'
  element :campo_nome_caso,       '#addCase_caseName'
  element :btn_salvar ,           '#btnSave'
  element :caso_criado ,          '.odd:nth-child(1) a'

  def inserir_nome_empregado(nome_empregado)
    campo_nome_empregado.set nome_empregado
  end

  def inserir_nome_caso(nome_caso)
    campo_nome_caso.set nome_caso
  end

  def clicar_salvar
    btn_salvar.click
  end

  def veriricar_criacao_sucesso(novo_caso)
    if caso_criado.text != novo_caso
      fail "Caso não foi criado com sucesso! Caso: '#{novo_caso}', não está sendo exebido na lista!"
    end
  end

end
