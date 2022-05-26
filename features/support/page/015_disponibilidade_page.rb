class DisponibilidadePage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_name, "#name"
    element :btn_buscar, '//*[@type="submit"]'
    element :btn_adicionar_disponibilidades, '//*[contains(text(),"Adicionar Disponibilidades")]'
    element :btn_editar, "#edit"
    element :btn_deletar, "#deletetooltip0673a5ea-98f4-42ec-b785-50d1784a7957"
    element :input_disponibilidade_descricao, "#description"
    element :input_descricao, "#description"



     # methods 

     
     def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_disponibilidade
        puts 'clicar no btn adicionar disponibilidade'
        btn_adicionar_disponibilidade.click
    end
    
    

    def clicar_btn_editar
        puts 'clicar no botao editar'
        btn_editar.click
    end
     
    

    def clicar_btn_deletar
        puts 'clicar no botao deletar'
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




    