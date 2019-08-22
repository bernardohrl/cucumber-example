Dado("abra o cadastro de donos") do
    click_on '--- Inserir Dono'
end

Quando("eu insiro todos os dados do dono do animalzinho") do
    
    within('#formulario') do
        fill_in :nome, with: 'Ner, o Bardo'
        fill_in :email, with: 'bernardo@gmail.com'
        choose :masc
        fill_in :cidade, with: 'Tão tão distante'
        fill_in :observacoes, with: 'Bora bora capybara'
        
        
        within '#estado' do
            find("option[value='DF']").click
        end

        click_button 'Gravar'
    end
end

Então("devo receber uma notificacão de que o dono foi inserido com sucesso") do
    expect(page).to have_content "Pronto !!! A INSERCAO foi efetuada com sucesso !!!"
end