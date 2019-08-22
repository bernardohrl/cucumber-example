Dado("que eu abra a tela principal do sistema") do
#   print('# Write code here that turns the phrase above into concrete actions')
end

Quando("eu peço para listar os donos de animais") do
  click_on '--- Listar Todos os Dono'
end

Então("deve ser apresentada a lista com os nomes de todos os donos") do
    expect(page).to have_selector('table')
end