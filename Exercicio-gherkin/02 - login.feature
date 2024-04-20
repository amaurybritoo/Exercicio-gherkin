Feature: Login

    Como cliente da EBAC=SHOP
    Quero realizar meu login(autenticação)
    Para visualizar meus pedidos

    #1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
    - autenticação valida
    - usuario Inexistente

    #2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
    - senha incorreta

    Background:
        Given dado que eu entro na pagina de login do site da EBAC-SHOP

        Scenario: 1 - dados validos
        When eu digitar "amaury@gmail.com"
        And a senha "123"
        Then deve exibir a mensagem de boas vindas "bem vindo Amaury!"

        Scenario: 1.1 - usuário inexistente
        When eu digitar "ondsfkn@gmail.com"
        And a senha "sfsf"
        Then deve exibir uma mensagem de alerta "Usuario nao encontrado em nossa base de dados!"

        Scenario: 2 - Senha invalida
        When eu digitar "amaury@gmail.com"
        And a senha "fwsfw"
        Then deve exibir uma mensagem de alerta "Usuário ou senha incorreto!"
