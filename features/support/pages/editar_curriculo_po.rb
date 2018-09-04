class EditarCurriculo
  include Capybara::DSL
  def acessa
    visit '/servicos/curriculo'
  end

  def editar
    click_on 'Editar nome'
  end

  def atualizar_nome(nome)
    find('#curriculo_nome_completo'). set nome
    click_on 'Salvar'
  end

  def alerta
    find('.area-de-notificacao-inner')
  end

  def msg_validate
    find('.validate-error')
  end

  def msg_confirmacao
    find('.area-de-notificacao')
  end
  #Editar dados pessoais
  def dados_pessoais(dt_nasc, genero, estado_civil, filhos, pais)
    numero = 123
    click_on 'Editar dados pessoais'
    find('#dados_pessoais_data_de_nascimento').set dt_nasc
    find('input[value="feminino"]').click
    find('select[name="dados_pessoais[estado_civil]"]').find(:xpath, 'option['+ estado_civil + ']').select_option
    find('select[name="dados_pessoais[pais_de_nacionalidade]"').find(:xpath, 'option['+ pais +']').select_option

    #find('#btn-add-doc').click
    #find('select[name="dados_pessoais[documentos_attributes][1][pais_id]"]').find(:xpath, 'option[2]').select_option
    #find('select[name="dados_pessoais[documentos_attributes][1][tipo_id]"]').find(:xpath, 'option[37]').select_option
    #find('#dados_pessoais_documentos_attributes_0_numero').set numero 
    click_on 'Salvar'
  end

end