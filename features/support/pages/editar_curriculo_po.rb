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
    click_on 'Salvar'
  end

#esse bloco está comentado pois a exclusão do documento possui um problema com isso não
#consigo adicionar e excluir o documento para executar o script várias vezes  
=begin
  def adociona_documento
    find('#btn-add-doc').click
  end

  def add_doc_select_by_text(value)
    cat = find('select[id=dados_pessoais_documentos_attributes_0_pais_id]')
    cat.click
    cat.find('option', text: value).click
  end 

  def tipo_doc_select_by_text(value)
    cat = find('select[id=dados_pessoais_documentos_attributes_0_tipo_id]')
    cat.click
    cat.find('option', text: value).click
  end 

  def numero_doc(numero)
    find('#dados_pessoais_documentos_attributes_0_numero').set numero
  end
=end
end