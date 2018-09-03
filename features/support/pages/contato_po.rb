class EditarContato
  include Capybara::DSL  
  def edit_contato(email, email_c, telefone)
    click_on 'Editar informações de contato' 
    find('#informacoes_de_contato_email').set email
    find('#informacoes_de_contato_confirmacao_de_email').set email_c
    find('#informacoes_de_contato_telefone_numero').set telefone
    click_on 'Salvar'
  end

  def msg_contato
    find('.area-de-notificacao-inner')
  end

  def validate_error
    find('.form-horizontal')
  end
end