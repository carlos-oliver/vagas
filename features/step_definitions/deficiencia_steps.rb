  Quando("habilito a opção que possuo deficiência") do
    @form_def.editar
    @form_def.def_s
  end
  
  Quando("seleciono o tipo de deficiência que possuo") do
    #auditiva
    @form_def.auditiva
    @form_def.auditiva_nivel_select_by_text('de 41 a 55 dB – Surdez Moderada')
    @form_def.auditiva_tipo_select_by_text('unilateral')
    @form_def.tipo_auditiva
    #fala
    @form_def.fala
    @form_def.fala_tipo_select_by_text('Grandes alterações na fala')
    #fisica
    @form_def.fisica
    @form_def.fisica_tipo_select_by_text('Hemiplegia')
    #intelectual
    @form_def.intelectual
    @form_def.intelectual_tipo_select_by_text
    #visual
    @form_def.visual
    @form_def.visual_tipo_select_by_text('Visão Subnormal ou Baixa Visão')
    @form_def.visual_det_select_by_text('unilateral')
    #obs
    @form_def.deficiencias_observacoes('Teste teste teste teste')
    click_on 'Salvar'
  end