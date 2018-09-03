
  Dado("que eu selecionei minha foto de perfil") do
    @upload.excluir_foto # exclui a foto antes de adicionar
    @my_photo = File.join(Dir.pwd, 'features/support/fixtures/foto.png')
  end
  
  Quando("eu carregar esta foto") do
    @upload.edit
    find('#adicionar-foto').click
    attach_file('Adicionar foto', @my_photo, visible: false)
  end
  
  Então("eu vejo a mensagem {string}") do |mensagem|
    msg = find('.nome-candidato')
    expect(msg).to have_content mensagem
  end
  
  Quando("eu excluir a foto de perfil") do
    @upload.edit                                         
    find('#cvRemoverFoto').click  
  end 