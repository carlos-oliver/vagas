#language:pt
Funcionalidade: Adicionar foto ao perfil
    Para meu perfil ficar completo
    Como usuário
    Posso carregar minha foto


Contexto: Formulário
    Dado que eu estou no formulário de cadastro

@login  @up
Cenario: upload foto
    E que eu selecionei minha foto de perfil
    Quando eu carregar esta foto
    Então eu vejo a mensagem "Carlos Santos de Oliveira"

@login @excluir_foto
Cenario: excluir foto
    Quando eu excluir a foto de perfil
    Então eu vejo a mensagem "Carlos Santos de Oliveira"