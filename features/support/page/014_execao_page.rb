class ExecaoPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements

    
    element :input_habilidade, :xpath, '//*[contains(text(),"Habilidade")]/..//input'
    element :input_fuso_horario, :xpath, '//*[contains(text(),"Fuso horário")]/..//input'
    element :input_name, :xpath, '//*[contains(text(),"Nome")]/../..//input'
    element :input_nome_linha, :xpath, '//*[contains(text(),"Nome")]/../../../div[5]/div[1]/div[1]//input'
    element :input_inicio, :xpath, '//*[contains(text(),"Nome")]/../../../div[5]/div[1]/div[2]//input'
    element :input_fim, :path, '//*[contains(text(),"Nome")]/../../../div[5]/div[1]/div[3]//input'
    element :input_name_criar, :xpath, '/html/body/div/div[2]/div[2]/div/div/div[2]/div/div/div/form/div/div[1]/div/div[1]/div/input'
    element :btn_buscar, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_execao, :xpath, '//*[contains(text(),"Adicionar Exceção")]'
    element :btn_editar_execao, :xpath, '//*[@id="edittooltip0"]', match: :first
    element :btn_deletar_execao, :xpath, '//*[@id="deletetooltip0"]', match: :first
    element :btn_adicionar_linha, :xpath, '//*[contains(text(),"Adicionar linha")]'


    
    def informar_nome_consulta
        puts "setar o nome na tela de consulta"
        @titulo = recuperar_dados("features/arquivos/execao.txt")
        input_name.set(@titulo[0].to_s)
    end


    def informar_nome
        puts "setar o nome da exeção"
        @titulo = recuperar_dados("features/arquivos/execao.txt")
        input_nome_criar.set(@titulo[0].to_s)
    end
    
    
    
    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    def clicar_btn_adicionar_execao
        puts 'clicar no btn adicionar exeção'
        btn_adicionar_execao.click
    end
    
    def clicar_btn_editar_execao
        puts 'clicar no btn editar exeção'
        btn_editar_execao.click
    end
    
    def clicar_btn_deletar_execao
        puts 'clicar no btn deletar exeção'
        btn_deletar_execao.click
    end
    
    def clicar_btn_adicionar_linha
        puts 'clicar no btn adicionar linha'
        btn_adicionar_linha.click
    end

     
    def clicar_btn_confirmar
        puts "clicar btn confirmar"
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end

    def informar_dados_execao
        puts "informar dados da exeção"

        input_name_criar.set("exeção Teste Automatizado")
        sleep 2
        input_name_criar.set(:enter)
        sleep 2
        @msg = "exeção Teste Automatizado"
        gravar_dados("features/arquivos/execao.txt", @msg)
        input_fuso_horario.set("America/Sao Paulo")
        input_fuso_horario.send_keys(:enter)
        sleep 2
        input_habilidade.set("TESTE_AUTOMACOES")
        input_habilidade.send_keys(:enter)
        sleep 2
        input_nome_linha.set("teste execao um")
        sleep 2
        input_inicio.set("09/06/2022 00:00:00")
        input_fim.set("09/06/2022 23:59:59")
    end


    def alterar_dados_execao
        puts "alterar dados do exeção"
        @titulo = recuperar_dados("features/arquivos/execao.txt")
        input_name.set(@titulo[0].to_s)
        input_fuso_horario.set("America/Sao Paulo")
        input_fuso_horario.send_keys(:enter)
        sleep 2
        input_habilidade.set("TESTE_AUTOMACOES")
        input_habilidade.send_keys(:enter)
        sleep 2
        input_nome_linha.set("teste execao um")
        sleep 2
        input_inicio.set("09/06/2022 00:00:00")
        input_fim.set("09/06/2022 23:59:59")
    end


end
    
