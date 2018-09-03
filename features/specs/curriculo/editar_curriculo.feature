#language:pt

Funcionalidade: Editar currículo
    Para que eu possa manter meus dados atualizados
    Sendo um usuário previamente cadastrado
    Posso editar o meu currículo

Contexto: Formulário
    Dado que eu estou no formulário de cadastro

@login
Cenario: Editar nome

        Quando completo o meu nome com "Carlos Santos de Oliveira"
        Então devo ver a seguinte mensagem "Dados salvos com sucesso."

        Quando completo o meu nome com ""
        Então devo ver a mensagem "Insira seu nome completo."
@login @dados
Esquema do Cenario: Editar dados pessoais

        E edito os dados pessoais com: 
        | dt_nasc      | <dt_nasc>      |
        | genero       | <genero>       |
        | estado_civil | <estado_civil> |
        | filhos       | <filhos>       |
        | pais         | <pais>         |
        Quando atualizo os dados
        Então vejo a seguinte mensagem"<saida>"

    Exemplos:
      | dt_nasc    | genero   | estado_civil | filhos | pais   | saida               |
      | 24/08/1995 | masculino | solteiro     | sim    | Brasil | cadastro atualizado |
