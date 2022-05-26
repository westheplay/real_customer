class TabulacoesPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_name, "#name"
    element :input_name_criar, '//*[@class="form-control"]'
    element :btn_buscar, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_tabulacoess, '//*[contains(text(),"Adicionar tabulação")]'
    element :btn_editar, "#edit"
    element :btn_deletar, "#deletetooltip0"
    element :btn_adicionar_subitem, '//*[contains(text(),"subitem")]'
    element :btn_deletar_subitem, '//*[contains(text(),"subitem")]'
    element :select_habilidade, '//*[contains(text(),"Selecione")]/../..'
    element :checkbox_global, '//*[contains(text(),"Selecione")]/../../../../div[1]/div[2]'




     # methods 

     
     def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_tabulacoes
        puts 'clicar no btn adicionar tabulacoes'
        btn_adicionar_tabulacoes.click
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