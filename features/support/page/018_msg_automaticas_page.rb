class MensagensAutomaticasPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_name, :xpath, '//*[@id="name"]'
    element :btn_buscar, :xpath, '//*[@class="waves-effect waves-light w-100 mb-3 mr-3 btn btn-primary"]'
    element :btn_editar, :xpath, '//*[@id="edittooltip0"]'


     # methods 

     
     def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end
    
    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end
       
    

    def clicar_btn_editar
        puts 'clicar no btn editar'
        btn_editar.click
    end


end    