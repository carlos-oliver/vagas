  Dado("que eu estou no formulário de cadastro") do
    @editar_curriculo.acessa
  end
  
  Quando("completo o meu nome com {string}") do |nome|
    @editar_curriculo.editar
    @editar_curriculo.atualizar_nome(nome)
  end
  
  Então("devo ver a seguinte mensagem {string}") do |mensagem|
    expect(@editar_curriculo.alerta).to have_content mensagem
  end

  Então("devo ver a mensagem {string}") do |mensagem|
    expect(@editar_curriculo.msg_nome_completo).to have_content mensagem
  end