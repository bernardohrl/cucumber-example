

Dado("abra a página inicial da aplicação") do
    page.should have_content('Login')
end

Quando("eu insiro o cpf o usuário") do
    @pagina_inicial = PaginaInicial.new
    @pagina_inicial.login
end

Então("ele realiza login no site") do
    page.should have_content('Releases')
end
  

Dado("o usuário logado, acesse o PAE") do
    @pagina_inicial = PaginaInicial.new
    @pagina_inicial.login
    click_on('Produtos')
    click_on('PAE - Programa de Auxílio a Educação')

    
end

Quando("eu cadastrar uma empresa") do
    within_window(windows.last) do
        click_on('Cadastro')
        click_on('Instituição')
        click_button('j_idt196')
        
        @pagina_cadastro = PaginaCadastro.new
        @pagina_cadastro.preencher
    end
end

Então("ela deve aparecer na lista de instituições") do
    within_window(windows.last) do
        page.should have_content('Instituição de Ensino incluída com sucesso!')
    end
    sleep 5
end
