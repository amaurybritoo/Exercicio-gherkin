Feature: Configurar produto

    Como aluno cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    e escolher a quantidade
    para depois inserir no carrinho

    Background:
        Given que eu entre na pagina de produto do site da EBAC-SHOP

    Scenario: 1 - seleção de caracteristicas do produto
        When eu escolher a cor
        And o tamanho
        And a quantidade de produtos
        Then eu posso adicionar ao carrinho

    Scenario Outline: 2 - Limite de produto
        When eu escolher a quantidade
        And for <quant>
        Then <msg>

        Examples:
            | quant | msg                    |
            | >10   | "venda não autorizada" |
            | <=10  | "venda autorizada"     |

    Scenario: 3 - limpar
        When eu clicar no botão "limpar"
        Then o carrinho é zerado

