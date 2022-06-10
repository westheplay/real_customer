class GruposPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    

    element :input_grupo_pai, :xpath, '//*[contains(text(),"Grupo pai")]/../../..//input'
    element :input_agente, :xpath, '//*[contains(text(),"Agent")]/../../..//input'
    element :input_gestor, :xpath, '//*[contains(text(),"Gestor")]/../../..//input'
    element :input_name_criar, :xpath, '//*[@class="form-control"]'
    element :input_name, "#name"
    element :btn_buscar, :xpath, '//*[@type="submit"]'
    element :btn_adicionar_grupo, :xpath, '//*[@id="new-group"]/a/button'
    element :btn_editar, :xpath, '//*[@id="edit"]'
    element :btn_deletar, :xpath, '//*[@id="deletetooltip"]'


    # methods 


    def informar_nome_consulta
        puts "setar o nome na tela de consulta"
        @titulo = recuperar_dados("features/arquivos/grupo.txt")
        input_name.set(@titulo[0].to_s)
    end


   def informar_nome
       puts "setar o nome do usuario"
       input_name_criar.set("grupo Teste Automatizado")
   end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_grupo
        puts 'clicar no btn adicionar grupo'
        btn_adicionar_grupo.click
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


    

    def informar_dados_grupo
        puts "Informar dados do grupo"
        sleep 1
        @alt = rand(100)
        input_name_criar.set("Teste Automatizado grupo #{@alt}")
        @msg = "Teste Automatizado grupo #{@alt}"
        gravar_dados("features/arquivos/grupo.txt", @msg)
        input_agente.set("Teste robson")
        sleep 2
        input_agente.send_keys(:enter)
        input_gestor.set("Robson")
        sleep 2
        input_gestor.send_keys(:enter)
        input_grupo_pai.set("Grupo Teste Um")
        sleep 2
        input_grupo_pai.send_keys(:enter)
        sleep 2  
    end


    def alterar_dados_grupo
        puts "alterar dados do grupo"
        @titulo = recuperar_dados("features/arquivos/grupo.txt")
        input_name_criar.set(@titulo[0].to_s)
        input_agente.set("WesleyTestAgent")
        sleep 2
        input_agente.send_keys(:enter)
        #input_gestor.set("Robson")
        #sleep 2
        #input_gestor.send_keys(:enter)
        #input_grupo_pai.set("Grupo Teste Dois")
        #sleep 2
        #input_grupo_pai.send_keys(:enter)
        #sleep 2
    end



end    