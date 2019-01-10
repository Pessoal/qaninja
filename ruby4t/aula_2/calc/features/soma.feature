#language: pt

Funcionalidade: Soma

    Esquema do Cenário: Soma de valores

        Quando faço a soma de <valor1> + <valor2>
        Então o resultado deve ser <resultado>

    Exemplos: 
        | valor1 | valor2 | resultado |
        | 2      | 3      | 5         |
        | 4      | 3      | 7         |
        | 10     | 10     | 21        |
        | 7      | 3      | 10        |
        | 4      | 4      | 8         |


        
# BDD (Desenvolvimento guiado por Comportamento)

# Func => Cadastro de endereço (Rua, Numero, Bairro, Cidade, Estado, CEP)
# Usuário preenche os campos e clica no botão cadastrar
# Exibe a mensagem "Endereço cadastado com sucesso"

    # => Dado é pré condição
    # => Quando é a ação
    # => Então é o resultado esperado para eu validar

    # BDD
    Cenario: Casdastro de endereço

        Dado que eu tenho um endereço com os seguintes atributos:
            |Rua|Av Paulista|
            |Numero|1000|
            |Bairro|Cerqueira Cezar|
            |Cidade|São Paulo|
            |CEP|000-0000|
        Quando faço o cadastro desse endereço
        Então este endereço é registrado no sistema
        E vejo a seguinte mensagem "Endereço cadastrado com sucesso."

    Cenario: Rua não deve ser obrigatório

        Dado que eu tenho um endereço com os seguintes atributos:
            |Rua||
            |Numero|1000|
            |Bairro|Cerqueira Cezar|
            |Cidade|São Paulo|
            |CEP|000-0000|
        Quando faço o cadastro desse endereço
        Então este endereço não é registro no sistema
        E vejo a seguinte mensagem de alerta "Rua é requirido."