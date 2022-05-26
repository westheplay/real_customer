class PesquisasPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    



    element :input_criar_nome, '//*[@class="select2-selection--is-disabled css-14jk2my-container"]'
    element :input_criar_tipo, '//*[@class="select2-selection__control css-yk16xz-control"]'
    element :input_criar_info, '//*[@type="textarea"]'
    element :input_name, '//*[@class="form-control"]'
    element :input_tipo, '//*[@class="select2-selection__value-container css-1hwfws3"]'
    element :btn_buscar, '//*[@class="waves-effect waves-light w-100 mb-3 mr-3 btn btn-primary"]'
    element :btn_adicionar_pesquisa, :xpath, '//*[@class="waves-effect waves-light w-100 mr-2  btn btn-success"]'
    element :btn_editar, "#edittooltip0"
    element :btn_deletar, "#deletetooltip0"


     # methods 

     
     def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end
    
     
    def clicar_input_tipo
        puts 'clicar no input tipo'
        input_tipo.click
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_pesquisa
        puts 'clicar no btn adicionar pesquisa'
        btn_adicionar_pesquisa.click
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
