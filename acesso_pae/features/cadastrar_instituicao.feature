#language:pt

  Funcionalidade: Cadastrar um Dono de Animal
    Como um usuário do sistema Portal Pexnet
    Quero cadastrar uma instituição
    Para usufluir dos benefícios do programa de auxílio à educação

    Contexto: Acessar a Programa de Auxílio à Educação

        @fazer-login
        Cenário: Fazer login na aplicação

            Dado abra a página inicial da aplicação
            Quando eu insiro o cpf o usuário
            Então ele realiza login no site

        @cadastrar-instituicao
        Cenário: Cadastrar uma instituição

            Dado o usuário logado, acesse o PAE
            Quando eu cadastrar uma empresa
            Então ela deve aparecer na lista de instituições