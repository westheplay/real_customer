class MenuPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_nome, '.name'
    element :input_email, '#email'
    element :input_dominio_empresa, '#slug'
    element :input_email_departamento, '#registration-email'
    element :btn_busca, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_departamento, '//*[contains(text(),"Adicionar departamento")]'
    element :btn_editar, '#edittooltip'
    element :btn_deletar, '#deletetooltip'


    # methods 
 
     
    
    def clicar_botao_busca
        puts 'clicar no botão busca '
        botao_busca.click
    end
   
    
    def clicar_botao_adicionar_departamento
        puts 'clicar no botão adicionar departamento '
        botao_adicionar_departamento.click
    end
     
    
    def clicar_botao_editar
        puts 'clicar no botao editar '
        botao_editar.click
    end
   
    
    def clicar_botao_deletar
        puts 'clicar no botao deletar '
        botao_deletar.click
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
   
   