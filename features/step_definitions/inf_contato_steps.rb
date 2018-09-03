  Dado("possuo os seguintes dados:") do |table|
    @email = table.rows_hash['email']
    @email_c = table.rows_hash['email_c']
    @telefone = table.rows_hash['telefone']
  end
  
  Quando("faço o meu cadastro") do
    @contato.edit_contato(@email, @email_c, @telefone)
    find('select[name="informacoes_de_contato[celular_pais_id]"]').find(:xpath, 'option[1]').select_option
  end
  
  Então("vejo a mensagem {string}") do |mensagem|
    expect(@contato.msg_contato).to have_content mensagem
  end

  Então("vejo a mensagem de alerta{string}") do |mensagem|
    expect(@contato.validate_error).to have_content mensagem
  end