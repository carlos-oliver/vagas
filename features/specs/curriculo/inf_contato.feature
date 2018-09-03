#language:pt

Funcionalidade: Editar currículo
    Para que eu possa manter meus dados atualizados
    Sendo um usuário previamente cadastrado
    Posso editar o meu currículo

Contexto: Formulário
    Dado que eu estou no formulário de cadastro

@login @contato1 
Cenario: Editar informações de contato

        E possuo os seguintes dados:
        | email    | carlos@teste.com |
        | email_c  | carlos@teste.com |
        | telefone | 123456           |
        Quando faço o meu cadastro 
        Então vejo a mensagem "Dados salvos com sucesso."

@login @contato2 
Esquema do Cenario: Campos obrigatórios

        E possuo os seguintes dados:
        | email  | <email>  |
        | email_c | <email_c> |
        | telefone | <telefone> |
        Quando faço o meu cadastro 
        Então vejo a mensagem de alerta"<saida>"

                                                                                              
   Exemplos:                                                                                  
     | email             | email_c          | telefone  | saida                              |
     |                   | carlos@teste.com | 2412-3456 | E-mail e confirmação não conferem. |
     | carlos@teste.com  |                  | 2412-3456 | Insira novamente o seu e-mail      |
     | carlos@teste.com  | carlos@teste.com |           | Insira o número do telefone.       |
     | 1carlos@teste.com | carlos@teste.com | 2412-3456 | E-mail e confirmação não conferem. |
