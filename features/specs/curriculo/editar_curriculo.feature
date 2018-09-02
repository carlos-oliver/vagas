#language:pt

Funcionalidade: Editar currículo
    Para que eu possa manter meus dados atualizados
    Sendo um usuário previamente cadastrado
    Posso editar e o meu currículo

Contexto: Formulário
    Dado que eu estou no formulário de cadastro

@login
Cenario: Editar nome

        Quando completo o meu nome com "Carlos Santos de Oliveira"
        Então devo ver a seguinte mensagem "Dados salvos com sucesso."

        Quando completo o meu nome com ""
        Então devo ver a mensagem "Insira seu nome completo."