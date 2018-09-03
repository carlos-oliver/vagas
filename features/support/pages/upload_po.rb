class Upload
  include Capybara::DSL  
  def edit
    find('#cv-edit-foto').click
  end

  def excluir_foto
    find('#cv-edit-foto').click
    find('#cvRemoverFoto').click
  end 
end


