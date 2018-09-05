Before do
  @login_page = LoginPage.new
  @editar_curriculo = EditarCurriculo.new
  @upload = Upload.new
  @contato = EditarContato.new
  @form_def = FormDeficiencia.new 
end

Before('@login') do
  @usuario = { login: 'carlos_teste', senha: '123456'}
  @login_page.acessa
  @login_page.logar(@usuario[:login], @usuario[:senha])
end

After('@reinicia') do
  @form_def.reinicia_teste
end
