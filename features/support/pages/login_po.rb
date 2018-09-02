class LoginPage
  include Capybara::DSL
  def acessa
    visit '/login-candidatos'
  end
  
  def logar(login, senha)
    find('#login_candidatos_form_usuario').set login
    find('#login_candidatos_form_senha').set senha
    find('input[name=commit]').click
  end 

end