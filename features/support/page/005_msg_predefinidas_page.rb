class MsgPreDefinidasPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    

    element :input_titulo, "#name"
    element :btn_buscar, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_msg_predef, :xpath, '//*[contains(text(),"Adicionar mensagem")]'
    element :btn_editar, "#edittooltip0"
    element :btn_deletar, "#deletetooltip0"
    element :input_imp_titulo, :xpath, '//*[@name="predefinedMessageName"]'
    element :select_habilidades, :xpath, "//label[contains(text(), 'Habilidades')]/../../div[2]/div/div//input"
    element :select_categoria, "#predefinedMessageCategories"
    element :input_imp_texto, :xpath, '//*[@name="predefinedMessageText"]'
    element :checkbox_ex_faq_global, :xpath, '//*[@id="layout-wrapper"]/div[2]/div//div[2]/div//table/tbody/tr[1]/td[6]'
    element :checkbox_ex_faq_ativado, :xpath, '//*[@id="layout-wrapper"]/div[2]/div//div[2]/div//table/tbody/tr[1]/td[7]'
    element :checkbox_texto_ativado, ".activated"
    element :btn_escolher_arquivo, ".predefinedMessageFiles"
    element :btn_delete_sim, :xpath, "//*[contains(text(), 'Sim')]"
    
    
    
    
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


    def clicar_btn_delete_sim
        puts 'clicar no botão delete sim'
        btn_delete_sim.click
    end


    
    def clicar_btn_confirmar
        puts "clicar btn confirmar"
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end

    def informar_titulo(titulo)
        puts "setar o título: #{titulo}"
        input_titulo.set(titulo)
    end

    def informar_dados_msg
        puts "Informar dados da mensagem"
        input_imp_titulo.set("Teste Automatizado")
        select_habilidades.set("CONTA_DIGITAL_CASHOUT")
        select_habilidades.send_keys(:enter)
        sleep(0.05)
        select_categoria.select("teste")
        sleep(0.05)
        input_imp_texto.set("TESTES AUTOMATIZADOS")
    end

    def alterar_dados_msg
        puts "Alterar dados da mensagem"
        select_habilidades.set("AUTO_PANE_NF")
        select_habilidades.send_keys(:enter)
        #find("#predefinedMessageCategories").native.clear
        #select_categoria.select("paulo")
        sleep(0.05)
        #input_imp_texto.clean
        input_imp_texto.set("ALTERAÇÃO TESTES AUTOMATIZADOS")

    end


end