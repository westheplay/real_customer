class MsgPreDefinidasPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    

    element :input_titulo, "#name"
    element :btn_buscar, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_msg_predef, '//*[contains(text(),"Adicionar mensagem")]'
    element :btn_editar, "#edittooltip0"
    element :btn_deletar, "#deletetooltip0"
    element :input_imp_titulo, ".predefinedMessageName"
    element :select_habilidades, ".predefinedMessageskill"
    element :select_categoria, "#predefinedMessageCategories"
    element :input_imp_texto, '#predefinedMessageText'
    element :checkbox_ex_faq_global, :xpath, '//*[@id="layout-wrapper"]/div[2]/div//div[2]/div//table/tbody/tr[1]/td[6]'
    element :checkbox_ex_faq_ativado, :xpath, '//*[@id="layout-wrapper"]/div[2]/div//div[2]/div//table/tbody/tr[1]/td[7]'
    element :checkbox_texto_ativado, ".activated"
    element :btn_escolher_arquivo, ".predefinedMessageFiles"
    
    
    
    
    # methods 
    
    
    def preencher_input_titulo(conteudo)
        puts 'preencher no input titulo'
        input_titulo.set(conteudo)
    end

    def clicar_btn_confirmar
        puts 'clicar no botão confirmar'
        btn_confirmar.click
    end
    
    
    def clicar_btn_cancelar
        puts 'clicar no botão cancelar'
        btn_cancelar.click
    end
    

    def clicar_btn_buscar
        puts 'clicar no botão buscar'
        btn_buscar.click
    end
    
    
    def clicar_btn_adicionar_msg_predef
        puts 'clicar no botão adicionar msg predefinida'
        btn_adicionar_msg_predef.click
    end
    
    def clicar_btn_editar
        puts 'clicar no botão editar'
        btn_editar.click
    end
    
    
    def clicar_btn_deletar
        puts 'clicar no botão deletar'
        btn_deletar.click
    end
       
    
    def clicar_btn_emp_titulo
        puts 'clicar no botão emp titulo'
        btn_emp_titulo.click
    end
   
    
    def clicar_btn_emp_habilidades
        puts 'clicar no botão emp habilidades'
        btn_emp_habilidades.click
    end
           
    
    def clicar_btn_emp_categoria
        puts 'clicar no botão emp categoria'
        btn_emp_categoria.click
    end
   
    
    def clicar_btn_emp_texto
        puts 'clicar no botão emp texto'
        btn_emp_texto.click
    end
           
    
    def clicar_btn_jpeg_visualizar
        puts 'clicar no botão jpeg visualizar'
        btn_jpeg_visualizar.click
    end
   
    
    def clicar_btn_jpeg_deletar
        puts 'clicar no botão jpeg deletar'
        btn_jpeg_deletar.click
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