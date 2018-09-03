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

  Dado("edito os dados pessoais com:") do |table|                                
    @dt_nasc = table.rows_hash['dt_nasc']
    @genero = table.rows_hash['genero']
    @estado_civil = table.rows_hash['estado_civil']
    @filhos = table.rows_hash['filhos']
    @pais = table.rows_hash['pais']
  end                                                                            
                                                                                 
  Quando("atualizo os dados") do                                                 
    @editar_curriculo.dados_pessoais(@dt_nasc, @genero, @estado_civil, @filhos, @pais)
    find('select[name="dados_pessoais[estado_civil]"]').find(:xpath, 'option[4]').select_option
  end                                                                            
                                                                                 
  Então("vejo a seguinte mensagem{string}") do |string|                          
    pending # Write code here that turns the phrase above into concrete actions  
  end                                                                            