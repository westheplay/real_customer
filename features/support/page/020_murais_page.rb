class MuraisPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_categoria, :xpath, '//*[@class="select2-selection__value-container css-1hwfws3"]'
    element :input_titulo, :xpath, '//*[@class="form-control"]'
    element :btn_buscar, :xpath, '//*[@class="mt-auto mb-3 filter-create-btn col-12 col-md-3 col-lg-auto"]'
    element :btn_adicionar_mural, :xpath, '//*[@class="waves-effect waves-light w-100 mr-2  btn btn-success"]'
    element :btn_editar, :xpath, '//*[@id="edittooltip0"]'
    element :btn_deletar, :xpath, '//*[@id="deletetooltip0"]'
    element :select_habilidade, '//*[contains(text(),"Selecione")]/..'
    element :select_categoria, '//*[contains(text(),"Escolher")]/..'
    element :select_categoria_link, '//*[contains(text(),"Categoria")]/../../../div[2]/div[1]/div'
    element :input_digite_titulo, '//*[contains(text(),"Título")]/../../../div/div/input'
    element :input_digite_url, '//*[contains(text(),"URL")]/../../div[1]/input'
    element :select_tipo, '//*[@class="select2-selection__value-container css-1hwfws3"]'
    element :input_src, '//*[contains(text(),"Src")]/../input'
    element :input_largura_px, '//*[contains(text(),"Largura")]/../../../div[1]/input'
    element :input_altura_xp, '//*[contains(text(),"Altura")]/../../../div/input'
    element :checkbox_global, '//*[@class="custom-control-input"]/../../div[2]'
    element :checkbox_largura, '//*[@class="custom-control-input"]/../../../../../../div[5]/div/div/div/div'
    element :checkbox_global, '//*[@class="custom-control-input"]/../../../../../../div[6]/div/div/div/div'






     # methods 

       
    
    def clicar_btn_adicionar_mural
        puts 'clicar no btn adicionar mural'
        btn_adicionar_mural.click
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