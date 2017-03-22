class LoginPage < SitePrism::Page

  # Declare todos os elementos da página
  element :campo_usarname ,       '#txtUsername'
  element :campo_senha,           '#txtPassword'
  element :btn_login,       '#btnLogin'
  element :retry_login, 'h1'

  def inserir_username(usarname)
    campo_usarname.set usarname
  end

  def inserir_senha(senha)
    campo_senha.set senha
  end

  def clicar_login
    btn_login.click
    TelaInicialPage.new
  end

  def verificar_retry_login(mensagem)
    if retry_login.text != mensagem
      fail "Tela para retentiva de login não foi exibida ou título não está sendo exebido corretamente!"
    end
  end

end
