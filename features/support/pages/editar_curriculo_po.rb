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
end