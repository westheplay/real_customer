class RoteirosPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    

    element :btn_buscar, :xpath, '//*[@type="submit"]'
    element :btn_adicionar_roteiro, "#new-script"
    element :btn_editar, "#edittooltip0"
    element :btn_deletar, "#deletetooltip0"
    element :btn_escolher_arquivo, "#scriptFiles"
    element :input_titulo, "#name"
    element :input_criar_titulo, :xpath, '//*[@name="scriptName"]'
    element :input_texto, :xpath, '//*[@name="scriptText"]'
    element :select_habilidades, :xpath, '//*[@id="scriptskill"]/div[1]/div[1]//input'
    element :select_categoria, :xpath, '//*[@id="scriptCategories"]/div[1]/div[1]//input'
    element :checkbox_global, :xpath, '//*[contains(text(),"assaas")]/../td[6]'
    element :checkbox_ativado, :xpath, '//*[contains(text(),"assaas")]/../td[7]'
    element :checkbox_habilitar_global, "#global"
    element :checkbox_ativado, "#activated"
    element :btn_delete_sim, :xpath, "//*[contains(text(), 'Sim')]"
    



    # methods 

    
       
    
    def preencher_input_criar_titulo(conteudo)
        puts 'preencher no input criar titulo'
        input_criar_titulo.set(conteudo)
    end

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end
     
    

    def clicar_btn_adicionar_roteiro
        puts 'clicar no btn adicionar roteiro'
        btn_adicionar_roteiro.click
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

    def informar_criar_titulo(criar_titulo)
        puts "setar o criar título: #{criar_titulo}"
        input_criar_titulo.set(criar_titulo)
    end
    

    
    def input_criar_titulo(titulo)
        puts "setar o título: #{titulo}"
        input_criar_titulo.set(titulo)
    end


    def informar_dados_roteiro
        puts "Informar dados do roteiro"
        input_criar_titulo.set("Teste Automatizado")
        select_habilidades.set("CONTA_DIGITAL_CASHOUT")
        sleep(0.20)
        select_habilidades.send_keys(:enter)
        sleep(0.05)
        #select_categoria.select("dsfdsfdsdfsdfs")
        sleep(0.05)
        input_texto.set("TESTES AUTOMATIZADOS")
    end

    def alterar_dados_roteiro
        puts "Alterar dados do roteiro"
        select_habilidades.set("AUTO_PANE_NF")
        select_habilidades.send_keys(:enter)
        #find("#predefinedMessageCategories").native.clear
        #select_categoria.select("paulo")
        sleep(0.05)
        #input_imp_texto.clean
        input_texto.set("ALTERAÇÃO TESTES AUTOMATIZADOS")

    end


end    