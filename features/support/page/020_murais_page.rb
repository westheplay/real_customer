class MuraisPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_categoria, :xpath, '//*[contains(text(),"Categoria")]/..//input'
    element :input_titulo, :xpath, '//*[contains(text(),"Título")]/..//input'
    element :btn_buscar, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_mural, :xpath, '//*[contains(text(),"Adicionar Mural")]'
    element :btn_editar, :xpath, '//*[@id="edittooltip0"]', match: :first
    element :btn_deletar, :xpath, '//*[@id="deletetooltip0"]', match: :first
    element :select_habilidade, :xpath, '//*[contains(text(),"Habilidade")]/../../../div[2]//input'
    element :select_categoria, :xpath, '//*[contains(text(),"Categoria")]/../../../div[2]//input'
    
    element :select_categoria_criar, :xpath, '//*[contains(text(),"Categoria")]/..//input'
    element :input_digite_titulo, :xpath, '//*[contains(text(),"Título")]/../../../div/div/input'
    element :input_digite_url, :xpath, '//*[contains(text(),"URL")]/..//input'
    element :select_tipo, :xpath, '//*[contains(text(),"Tipo")]/../../div[2]//input'
    element :input_src, :xpath, '//*[contains(text(),"Src")]/../input'
    element :input_largura_px, :xpath, '//*[contains(text(),"Largura")]/../../../div[1]/input'
    element :input_altura_xp, :xpath, '//*[contains(text(),"Altura")]/../../../div/input'
    element :checkbox_global_criar, :xpath, '//*[contains(text(),"Global")]/../../div[2]//input'
    element :checkbox_largura, :xpath, '//*[@class="custom-control-input"]/../../../../../../div[5]/div/div/div//input'
    element :checkbox_global, :xpath, '//*[@class="custom-control-input"]/../../../../../../div[6]/div/div/div//input'






     # methods 

    def informo_habilidade_mural
        puts 'informar habilidade mural'
        select_habilidade.set("AUTO_PANE_NF")
        sleep 2
        select_habilidade.send_keys(:enter)
    end


    def informo_titulo_consulta_mural
        puts 'informar titulo na tela de consulta mural'
        @titulo = recuperar_dados("features/arquivos/murais.txt")
        input_titulo.set(@titulo[0].to_s)
    end 
    
    

    def informar_titulo_mural
        puts 'informar o titulo do mural'
        @titulo = recuperar_dados("features/arquivos/murais.txt")
        input_titulo.set(@titulo[0].to_s)
    end    
       
    
    def clicar_checkbox_global_mural
        puts "clicar checkbox global mural"
        checkbox_global_criar.click
    end

       
    
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


    def informar_dados_mural
        puts "informo dados do mural"
        select_habilidade.set("AUTO_PANE_NF")
        sleep 2
        select_habilidade.send_keys(:enter)
        sleep 2
        select_categoria_criar.set("Geral")
        sleep 2
        select_categoria_criar.send_keys(:enter)
        sleep 2
        variavel_nome = ['abb', 'aaa', 'fgj', 'fgy']
        variavel_rand = rand(5)
        @test = variavel_nome[variavel_rand]
        input_digite_titulo.set("teste criar mural #{@test}")
        @msg = "teste criar mural #{@test}"
        gravar_dados("features/arquivos/murais.txt", @msg)  
        sleep 2
        select_tipo.set("imagem")
        sleep 2
        select_tipo.send_keys(:enter)
        input_src.set("https://datastudio.google.com/u/0/")
    end


    def editar_dados_mural
        puts "editar dados so mural"
        select_habilidade.set("CHAT_NUCLEO_AUTO")
        sleep 2
        select_habilidade.send_keys(:enter)
        sleep 2
        select_categoria_criar.set("Link")
        sleep 2
        select_categoria_criar.send_keys(:enter)
        sleep 2
        ##input_digite_titulo.set(@titulo[0].to_s)
        #sleep 2
        #select_tipo.set("imagem")
        #sleep 2
        #select_tipo.send_keys(:enter)
        sleep 3
        input_digite_url.set("https://www.google.com.br/")

    end 






end   