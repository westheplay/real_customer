class TabulacoesPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_name, "#name"
    element :input_name_criar, :xpath, '//*[contains(text(),"Nome")]/../div//input'
    element :btn_buscar, :xpath,'//*[contains(text(),"Buscar")]'
    element :btn_adicionar_tabulacoes, :xpath,'//*[contains(text(),"Adicionar tabulação")]'
    element :btn_editar, "#edit", match: :first
    element :btn_deletar, "#deletetooltip0", match: :first
    element :btn_adicionar_subitem, :xpath, '//*[contains(text(),"subitem")]'
    element :btn_deletar_subitem, :xpath, '//*[contains(text(),"subitem")]'
    element :select_habilidade, :xpath, '//*[contains(text(),"Habilidade")]/../../../div[2]//input'
    element :checkbox_global, :xpath, '//*[contains(text(),"Selecione")]/../../../../div[1]/div[2]'




     # methods 


    def click_checkbox_global_tabulacao
        puts 'clicar no checkbox global'
        checkbox_global.click
        sleep 2
    end


    
    def informo_nome_tela_consulta_tabulacao
        puts 'informo o nome na tela de consulta tabulacoes'
        @titulo = recuperar_dados("features/arquivos/tabulacoes.txt")
        input_name.set(@titulo[0].to_s)
    end

     
    def informar_nome_tabulacao
        puts 'informo o nome da tabulacao'
        @titulo = recuperar_dados("features/arquivos/tabulacoes.txt")
        input_name_criar.set(@titulo[0].to_s)
    end  
     
    def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_tabulacoes
        puts 'clicar no btn adicionar tabulacoes'
        btn_adicionar_tabulacoes.click
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


    def informar_dados_tabulacao
        puts "informar dados tabulacoes"
        variavel_nome = ['abb', 'aaa', 'fgj', 'fgy']
        variavel_rand = rand(5)
        @test = variavel_nome[variavel_rand]
        input_name_criar.set("tabulacoes teste #{@test}")
        @msg = "tabulacoes teste #{@test}"
        gravar_dados("features/arquivos/tabulacoes.txt", @msg)
        checkbox_global.click
        select_habilidade.set("test")
        select_habilidade.send_keys(:enter)
    end

    
    def editar_dados_tabulacao
        puts "editar dados tabulacoes"
        #@titulo = recuperar_dados("features/arquivos/tabulacoes.txt")
        #input_name.set(@titulo[0].to_s)
        #checkbox_global.click
        select_habilidade.set("CHAT_NUCLEO_AUTO")
        select_habilidade.send_keys(:enter)
    end


end    