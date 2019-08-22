#language:pt

  Funcionalidade: Listar Donos de Animais
    Como um usuário do sistema de PetShop
    Quero listar todos os donos de animais
    Para que meus funcionários possam encontrá-los facilmente

    Contexto: Acessar a tela principal do sistema de Petshop

        @listar-donos
        Cenário: Listar todos os donos de animaizinhos no sistema

            Dado que eu abra a tela principal do sistema
            Quando eu peço para listar os donos de animais
            Então deve ser apresentada a lista com os nomes de todos os donos