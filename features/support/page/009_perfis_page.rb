class PerfisPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_nome, "#name"
    element :input_descricao, "#description"
    element :btn_buscar, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_perfil, '//*[contains(text(),"Adicionar perfil")]'
    element :btn_editar, "#edittooltip"
    element :btn_deletar, "#deletetooltip"
    element :input_profile_nome, "#name"
    element :input_descricao, "#description"
    element :select_tipo_permissao, "#role"


     # methods 

    
    def click_btn_editar
        puts 'clicar no botão editar'
        btn_editar.click
    end    
    
    
    def click_btn_deletar
        puts 'clicar no botão deletar'
        btn_deletar.click
    end  

 

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_perfil
        puts 'clicar no btn adicionar perfil'
        btn_adicionar_perfil.click
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