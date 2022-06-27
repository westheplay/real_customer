class CanaisPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    

    element :input_habilidade, :xpath, '//*[contains(text(),"Habilidade")]/..//input'
    element :input_canal, :xpath, '//*[contains(text(),"Canal")]/../div/div/div/div/div//input'
    element :input_pre_chat, :xpath, '//*[contains(text(),"Pesquisa pré-chat")]/..//input'
    element :input_pos_chat, :xpath, '//*[contains(text(),"Pesquisa pós-chat")]/..//input'
    element :select_arquivo_tipo, :xpath, "//*[contains(text(), 'Tipo')]/../div"
    element :select_arquivo_estencao, :xpath, "//*[contains(text(), 'Extensão')]/../div"
    element :select_arquivo_metrica, :xpath, "//*[contains(text(), 'Métrica')]/../div"
    element :input_arquivo_tamanho, :xpath, "//*[contains(text(), 'Tamanho máximo')]/../div"
    element :input_nome_criar, :xpath, '//*[contains(text(),"Nome")]/..//input'
    element :input_chave, :xpath, '//*[@name="channelkey"]'
    element :input_tempo_limite, :xpath, '//*[@name="channeltimeout"]'
    element :input_id_integracao, :xpath, '//*[@name="channelintegrationid"]'
    element :input_chave_acesso, :xpath, '//*[@name="channelaccesskey"]'
    element :input_tamanho_maximo, :xpath, '//*[@name="channelmessagemaxsize"]'
    element :input_name, "#name"
    element :btn_buscar, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_canal, :xpath, '//*[contains(text(),"Adicionar canal")]'
    element :btn_editar, :xpath, '//*[@id="edittooltip0"]', match: :first
    element :btn_deletar, :xpath, '//*[@id="deletetooltip0"]', match: :first
    element :btn_adicionar, :xpath, '//*[@class="waves-effect waves-light w-100 mr-2 btn btn-success"]'
    element :btn_imagem_deletar, :xpath, '//*[contains(text(),"Deletar")]/../../../div[2]/div[2]'
   


    # methods 


    def informar_nome_consulta_canal
        puts "setar o nome na tela de consulta"
        @titulo = recuperar_dados("features/arquivos/canal.txt")
        input_name.set(@titulo[0].to_s)
    end


   def informar_nome
       puts "setar o nome do canal"
       input_nome_criar.set("canal Teste Automatizado")
   end

     
    def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_canal
        puts 'clicar no btn adicionar canal'
        btn_adicionar_canal.click
    end
    
    

    def clicar_btn_adicionar
        puts 'clicar no btn adicionar'
        btn_adicionar.click
    end
     
    

    def clicar_btn_deletar_imagem
        puts 'clicar no btn deletar imagem'
        btn_deletar_imagem.click
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


    def informar_dados_canal
        puts "Informar dados do canal"
        sleep 1
        variavel_nome = ['abb', 'aaa', 'fgj', 'fgy']
        @i = rand(5)
        input_nome_criar.set("canal #{variavel_nome[@i]} Teste Automatizado")
        @msg = "canal #{variavel_nome[@i]} Teste Automatizado"
        gravar_dados("features/arquivos/canal.txt", @msg)
        @alt = rand(100000)
        input_chave.set("123#{@alt}")
        input_habilidade.set("AUTO_PANE_NF")
        input_habilidade.send_keys(:enter)
        input_canal.set("Altu")
        sleep 2
        input_canal.send_keys(:enter)
        input_pre_chat.set("test")
        sleep 2
        input_pre_chat.send_keys(:enter)
        input_pos_chat.set("test")
        sleep 2
        input_pos_chat.send_keys(:enter)
        input_tempo_limite.set("5")
        input_id_integracao.set("321321321321")
        input_chave_acesso.set("123212321#{@alt}")
        input_tamanho_maximo.set("6")

        
    end


    def alterar_dados_canal
        puts "alterar dados do canal"
        @titulo = recuperar_dados("features/arquivos/canal.txt")
        input_nome_criar.set(@titulo[0].to_s)
        @alt = rand(100000)
        input_chave.set("123123#{@alt}")
        input_habilidade.set("CHAT_NUCLEO_AUTO")
        sleep 2
        input_habilidade.send_keys(:enter)
        input_canal.set("Telegram")
        sleep 2
        input_canal.send_keys(:enter)
        input_pre_chat.set("test")
        sleep 2
        #input_pre_chat.send_keys(:enter)
        #input_pos_chat.set("test")
        #sleep 2
        #input_pos_chat.send_keys(:enter)
        #input_tempo_limite.set("5")
        #input_id_integracao.set("321321321321")
        input_chave_acesso.set("123212321#{@alt}")
        input_tamanho_maximo.set("6")
    end


end    