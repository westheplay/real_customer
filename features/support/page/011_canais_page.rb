class CanaisPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    

    element :select_habilidade, "#channelskill"
    element :select_canal, "channelchannel"
    element :select_pre_chat, "//*[contains(text(), 'pré-chat')]/../div[1]"
    element :select_pos_chat, "//*[contains(text(), 'pós-chat')]/../div[1]"
    element :select_arquivo_tipo, "//*[contains(text(), 'Tipo')]/../div"
    element :select_arquivo_estencao, "//*[contains(text(), 'Extensão')]/../div" 
    element :select_arquivo_metrica, "//*[contains(text(), 'Métrica')]/../div" 
    element :input_arquivo_tamanho, "//*[contains(text(), 'Tamanho máximo')]/../div"
    element :input_nome_criar, ".channelname"
    element :input_chave, ".channelkey"
    element :input_tempo_limite, ".channeltimeout"
    element :input_id_integracao, ".channelintegrationid"
    element :input_chave_acesso, ".channelaccesskey"
    element :input_tamanho_maximo, ".channelmessagemaxsize"
    element :input_name, "#name"
    element :btn_buscar, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_canal, '//*[contains(text(),"Adicionar canal")]'
    element :btn_editar, "#edittooltip0"
    element :btn_deletar, "#deletetooltip0"
    element :btn_adicionar, '//*[@class="waves-effect waves-light w-100 mr-2 btn btn-success"]' 
    element :btn_imagem_deletar, '//*[contains(text(),"Deletar")]/../../../div[2]/div[2]'
   


    # methods 

     
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


end    