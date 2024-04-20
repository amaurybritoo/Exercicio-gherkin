#Language: pt
            Funcionalidade: Tela de login
            Como aluno do portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a pagina de autenticação do portal EBAC

            Cenário: Autenticação Válida
            Quando eu digitar o usuario "amaury@gmail.com"
            E a senha "123"
            Então deve exibir a mensagem de Boas vindas: "Olá Amaury"

            Cenário: Usuário Inexistente
            Quando eu digitar o usuario "potter@gmail.com"
            E a senha "1234"
            Então dever exibir a mensagem de alerta: "Usuario não encontrado na nossa base de dados"

            Cenário: Senha incorreta
            Quando eu digitar o usuario "amaury@gmail.com"
            E a senha "ghfgjfj"
            Então deve exibir a mensagem alerta: "Usuario ou senha incorreta"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir a mensagem de boas vindas: <mensagem>

            Exemplos:
            | usuario              | senha | mensagem        |
            | "amaury@gmail.com"   | "123" | "Olá Amaury!"   |
            | "junior@gmail.com"   | "123" | "Olá Junior!"   |
            | "Mauricio@gmail.com" | "123" | "Olá Mauricio!" |
            | "thiago@gmail.com"   | "123" | "Olá Junior!"   |

