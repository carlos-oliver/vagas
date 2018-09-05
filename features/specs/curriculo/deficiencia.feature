#language:pt

Funcionalidade: Editar currículo
    Para que eu possa manter meus dados atualizados
    Sendo um usuário previamente cadastrado
    Posso editar o meu currículo

Contexto: Formulário
    Dado que eu estou no formulário de cadastro

@login @reinicia @deficiencia 
Cenario: Possui deficiência

        Quando habilito a opção que possuo deficiência
        E seleciono o tipo de deficiência que possuo
        Então devo ver a seguinte mensagem "Dados salvos com sucesso."