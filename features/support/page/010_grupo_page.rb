class GrupoPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    

    element :select_grupo_pai, '//*[contains(text(),"Grupo pai")]/../../../div[2]/div'
    element :select_gerente, '//*[contains(text(),"Gerente")]/../../../div[2]/div'
    element :select_agente, '//*[contains(text(),"Agente")]/../../../div[2]/div'
    element :input_name_criar, :xpath, '//*[@class="form-control"]'
    element :input_name, ".name"
    element :btn_buscar, '//*[@type="submit"]'
    element :btn_adicionar_grupo, '//*[contains(text(),"Adicionar grupo")]'
    element :btn_editar, :xpath, '//*[@id="edit"]'
    element :btn_deletar, :xpath, '//*[@id="deletetooltip"]'


    # methods 

     
    def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_grupo
        puts 'clicar no btn adicionar grupo'
        btn_adicionar_grupo.click
    end
    
    

    def clicar_btn_editar
        puts 'clicar no btn editar'
        btn_editar.click
    end

    

    def clicar_btn_deletar
        puts 'clicar no btn deletar'
        btn_deletar.click
    end

    
    def clicar_btn_confirmar
        puts "clicar btn confirmar"
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end


end    