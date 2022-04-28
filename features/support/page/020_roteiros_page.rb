class RoteirosPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    

    element :btn_buscar, '//*[@type="submit"]'
    element :btn_adicionar_roteiros, '//*[contains(text(),"Adicionar roteiro")]'
    element :btn_editar, "#edittooltip0"
    element :btn_deletar, "#deletetooltip0"
    element :btn_escolher_arquivo, "#scriptFiles"
    element :input_titulo, "#name"
    element :input_criar_titulo, ".scriptName"
    element :input_texto, ".scriptText"
    element :select_habilidades, "#scriptskill"
    element :select_categoria, "#scriptCategories"
    element :checkbox_global, '//*[contains(text(),"assaas")]/../td[6]'
    element :checkbox_ativado, '//*[contains(text(),"assaas")]/../td[7]'
    element :checkbox_habilitar_global, "#global"
    element :checkbox_ativado, "#activated"
    



    # methods 

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end
     
    

    def clicar_btn_adicionar_roteiros
        puts 'clicar no btn adicionar roteiros'
        btn_adicionar_roteiros.click
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