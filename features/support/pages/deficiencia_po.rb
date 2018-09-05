class FormDeficiencia
  include Capybara::DSL
  def editar
    click_on 'Editar deficiências'
  end 

  def def_s
    find('#deficiencias_possui_alguma_deficiencia_true').click
  end
#auditiva
  def auditiva
    find('#deficiencias_possui_deficiencia_auditiva').click
  end 

  def auditiva_nivel_select_by_text(value)
    cat = find('select[id=deficiencias_nivel_de_deficiencia_auditiva]')
    cat.click
    cat.find('option', text: value).click
  end

  def auditiva_tipo_select_by_text(value)
    cat = find('select[id=deficiencias_detalhamento_de_deficiencia_auditiva]')
    cat.click
    cat.find('option', text: value).click
  end

  def tipo_auditiva
    find('#deficiencias_oralizado').click
    find('#deficiencias_usuario_de_libras').click
    find('#deficiencias_precisa_de_interprete').click
  end 

#fala
  def fala
    find('#deficiencias_possui_deficiencia_fala').click
  end

  def fala_tipo_select_by_text(value)
    cat = find('select[id=deficiencias_tipo_de_deficiencia_fala]')
    cat.click
    cat.find('option', text: value).click
  end

#física
  def fisica
    find('#deficiencias_possui_deficiencia_fisica').click
  end

  def fisica_tipo_select_by_text(value)
    cat = find('select[id=deficiencias_tipo_de_deficiencia_fisica]')
    cat.click
    cat.find('option', text: value).click
  end

  #intelectual

  def intelectual
    find('#deficiencias_possui_deficiencia_mental').click
  end 

  def intelectual_tipo_select_by_text
    find('#deficiencias_comunicacao').click
    find('#deficiencias_cuidado_pessoal').click
    find('#deficiencias_habilidade_social').click
    find('#deficiencias_utiliza_recursos_comunidade').click
    find('#deficiencias_saude_seguranca').click
    find('#deficiencias_habilidade_academica').click
    find('#deficiencias_lazer').click
    find('#deficiencias_trabalho').click
  end

#visual

  def visual
    find('#deficiencias_possui_deficiencia_visual').click
  end

  def visual_tipo_select_by_text(value)
    cat = find('select[id=deficiencias_tipo_de_deficiencia_visual]')
    cat.click
    cat.find('option', text: value).click
  end

  def visual_det_select_by_text(value)
    cat = find('select[id=deficiencias_detalhamento_de_deficiencia_visual]')
    cat.click
    cat.find('option', text: value).click
  end 
  
  def deficiencias_observacoes(obs)
    find('#deficiencias_observacoes').set obs
  end

#método para executar o teste várias vezes  
  def reinicia_teste
    click_on 'Editar deficiências'
    find('#deficiencias_possui_alguma_deficiencia_false').click
    click_on 'Salvar'
  end

end