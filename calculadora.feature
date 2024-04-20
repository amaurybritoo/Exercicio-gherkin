Feature: Calculadora
    Como não sei fazer conta de cabeça
    Quero usar a calculador do sistema
    Para somar 2 numeros

    Background:
        Given que eu acesse a calciladora do sistema

    Scenario: Soma de dois números
        When eu somar 2 + 2
        Then o resultado deve ser 4

    Scenario Outline: varias somas
        When eu somar <n1> + <n2>
        Then o resultado deve ser <resultado>

        Examples:
            | n1 | n2 | resultados |
            | 5  | 1  | 6          |
            | 5  | 5  | 10         |
            | 4  | 10 | 14         |
            | 10 | 1  | 11         |
            | 40 | 26 | 66         |
