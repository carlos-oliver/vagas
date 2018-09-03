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

  def msg_nome_completo
    find('.validate-error')
  end

  #Editar dados pessoais
  def dados_pessoais(dt_nasc, genero, estado_civil, filhos, pais)
    click_on 'Editar dados pessoais'
    find('#dados_pessoais_data_de_nascimento').set dt_nasc
    find('input[value="feminino"]').click # adicionar o metedo genero
    sleep 5
    click_on 'Salvar'    
  end
end