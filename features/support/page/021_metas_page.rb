class MetasPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    

    element :select_tipo, :xpath, '//*[contains(text(),"Tipo")]/../../div//input'
    element :select_grupo_criar, :xpath, '//*[contains(text(),"Grupo")]/../../div//input'
    element :input_nome_criar, :xpath, '//*[contains(text(),"Nome")]/..//input'
    element :input_valor_criar, :xpath, '//*[contains(text(),"Valor")]/../../div//input'
    element :input_dica_criar, :xpath, '//*[contains(text(),"Dica")]/../div/textarea'
    element :input_nome, "#name"
    element :btn_buscar, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_meta, :xpath, '//*[contains(text(),"Adicionar Meta")]'
    element :btn_editar, "#edittooltip0"
    element :btn_deletar, "#deletetooltip0"



     # methods 

    def informo_nome_consulta_meta
        puts 'informo o nome na tela de consulta meta'
        @titulo = recuperar_dados("features/arquivos/metas.txt")
        input_nome_criar.set(@titulo[0].to_s)

    end

     
    def preencher_input_name
        puts 'preencher no input name'
        @titulo = recuperar_dados("features/arquivos/metas.txt")
        input_nome_criar.set(@titulo[0].to_s)
    end
    
    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end
     
    

    def clicar_btn_adicionar_meta
        puts 'clicar no btn adicionar meta'
        btn_adicionar_meta.click
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


    def informo_dados_meta
        puts 'informo os dados da meta'
        variavel_nome = ['abb', 'aaa', 'fgj', 'fgy']
        variavel_rand = rand(5)
        @test = variavel_nome[variavel_rand]
        input_nome_criar.set("metas QA teste #{@test}")
        @msg = "metas QA teste #{@test}"
        gravar_dados("features/arquivos/metas.txt", @msg)
        select_tipo.set("tempo de espera")
        sleep 2
        select_tipo.send_keys(:enter)
        input_valor_criar.set("31")
        select_grupo_criar.set("grupo Teste Automatizado")
        sleep 2
        select_grupo_criar.send_keys(:enter)
        input_dica_criar.set("Nova Meta Teste QA")
    end



    def editar_dados_meta
        puts 'editar os dados da meta'
        @titulo = recuperar_dados("features/arquivos/metas.txt")
        input_nome_criar.set(@titulo[0].to_s)
        select_tipo.set("total de atendimentos")
        sleep 2
        select_tipo.send_keys(:enter)
        input_valor_criar.set("40")
        select_grupo_criar.set("Grupo Neto")
        sleep 2
        select_grupo_criar.send_keys(:enter)
        input_dica_criar.set("Nova Meta Teste QA 2")
    end

end   