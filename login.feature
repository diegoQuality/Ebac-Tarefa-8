            #language: pt

            Funcionalidade: Tela de login
            Dado que estou na página de login

            Cenário: Usuário com dados válidos
            Quando eu digitar o usuário "diego@ebac.com.br"
            E a senha "c"
            Então devo conseguir realizar o login com sucesso

            Cenário: Usuário com dados inválidos
            Quando eu digitar o usuário "diego@error.com.br"
            E a senha "ebac1234"
            Então devo receber uma mensagem de erro informando "Usuário inválido"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "diego@ebac.com.br"
            E a senha "alow1234"
            Então deve aparecer uma mensagem de erro informando "Senha inválida"

            Esquema do Cenário: Autenticar diversos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve aparecer uma <mensagem> de login com sucesso

            Exemplos:
            | usuario              | senha      | mensagem           |
            | "diego@ebac.com.br"  | "ebac1234" | "Usuário válido"   |
            | "diego@error.com.br" | "ebac1234" | "Usuário inválido" |
            | "diego@ebac.com.br"  | "alow1234" | "Senha inválida"   |
