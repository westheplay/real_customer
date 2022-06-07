class MetasPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    

    element :select_csat, '//*[contains(text(),"CSAT")]'
    element :select_grupo_filho, '//*[contains(text(),"Grupo Filho")]'
    element :input_nome_criar, ".goalName"
    element :input_valor_criar, ".goalValue"
    element :input_dica_criar, ".goalTooltip"
    element :input_nome, "#name"
    element :btn_buscar, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_meta, '//*[contains(text(),"Adicionar meta")]'
    element :btn_editar, "#edittooltip0"
    element :btn_deletar, "#deletetooltip0"



     # methods 

     
    def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end
    
    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end
     
    

    def clicar_btn_adicionar_meta
        puts 'clicar no btn adicionar meta'
        btn_adicionar_meta.click
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