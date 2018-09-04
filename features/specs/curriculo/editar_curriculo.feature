#language:pt

Funcionalidade: Editar currículo
    Para que eu possa manter meus dados atualizados
    Sendo um usuário previamente cadastrado
    Posso editar o meu currículo

Contexto: Formulário
    Dado que eu estou no formulário de cadastro

@login @nome
Cenario: Editar nome

        Quando completo o meu nome com "Carlos Santos de Oliveira"
        Então devo ver a seguinte mensagem "Dados salvos com sucesso."

        Quando completo o meu nome com ""
        Então devo ver a mensagem "Insira seu nome completo."


@login @dados
Esquema do Cenario: Editar dados pessoais completo
        E edito os dados pessoais com: 
        | dt_nasc      | <dt_nasc>      |
        | genero       | <genero>       |
        | estado_civil | <estado_civil> |
        | filhos       | <filhos>       |
        | pais         | <pais>         |
        Quando atualizo os dados
        Então vejo a seguinte mensagem de confirmação "<saida>"

    Exemplos:
      | dt_nasc    | genero    | estado_civil | filhos | pais | saida                     |
      | 24/08/1996 | masculino | 4            | sim    | 8    | Dados salvos com sucesso. |
      | 22/09/1994 | masculino | 3            | sim    | 9    | Dados salvos com sucesso. |
  



@login @dados1
Esquema do Cenario: Editar dados pessoais incompleto

        E edito os dados pessoais com: 
        | dt_nasc      | <dt_nasc>      |
        | genero       | <genero>       |
        | estado_civil | <estado_civil> |
        | filhos       | <filhos>       |
        | pais         | <pais>         |
        Quando atualizo os dados
        Então vejo a seguinte mensagem "<saida>"

    Exemplos:
      | dt_nasc | genero    | estado_civil | filhos | pais   | saida                          |
      |         | masculino | 4            | sim    | Brasil | Insira sua data de nascimento. |


