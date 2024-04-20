Feature: Checkout

    Como cliente da EBAC-SHOP
    Quero fazer/concluir meu cadastro
    Para finalizar minha compra


    #1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
    #2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
    #3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.


    Background:
        Given que eu entro na pagina de checkout do site da EBAC-SHOP

    Scenario: 1 - dados obrigatórios
        When eu preencho todos os dados obrigatórios
        Then eu consigo realizar o cadastro

    Scenario Outline: 2 - Email com formato invalido
        When eu inserir o email <email>
        Then deve exibir <msg>

    Example:
            | email              | msg                          |
            | "amaurygmail.com"  | "email com formato invalido" |
            | "amaury@gmail.com" | "email valido"               |

    Scenario: 3 - campos vazios
        When eu inseri meus dados
        But deixei algum campo vazio
        Then deve exibir um alerta "Campo vazio"
        