class PaginaCadastro < SitePrism::Page
    include Capybara::DSL

    element :cnpj, "#idCnpj"
    element :nome, "#nomeInstituicao"
    element :idMec, "#idMec"
    element :idSigla, "#idSigla"
    element :idCep, "#idCep"
    element :idEndereco, "#idEndereco"
    element :idComplemento, "#idComplemento"
    element :idBairro, "#idBairro"
    element :uf, "#uf"
    element :municipio, "#municipio"
    element :table, "#tabela"
    element :table_option, :id, "tabela:2:selectCursoInteresse"
    element :button, "#j_idt273"

    def preencher()
        cnpj.set('08423575000129')
        nome.set('Empresa daora')
        idMec.set('10')
        idSigla.set('30')
        idCep.set('71925456')
        idEndereco.set('Rua muito engraçada')
        idComplemento.set('Não tinha casa')
        idBairro.set('Não tinha nada')
        
        within uf do
            find("option[value='DF']").click
        end

        municipio.set('Lugar nenhum')
        table_option.set(true)
        button.click
    end
end