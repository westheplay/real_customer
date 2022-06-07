class RoteirosPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    

    element :btn_buscar, :xpath, '//*[@type="submit"]'
    element :btn_adicionar_roteiro, "#new-script"
    element :btn_editar, :xpath, '//*[@id="edittooltip0"]'
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

    
       
    
    def preencher_input_titulo(conteudo)
        puts 'preencher no input criar titulo'
        input_titulo.set(conteudo)
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

    def informar_titulo_edicao(titulo)
        puts "setar o título: #{titulo}"
        @titulo = recuperar_dados("features/arquivos/roteiro.txt")
        input_titulo.set(@titulo[0].to_s)
    end

    def informar_titulo(titulo)
        puts "setar o título: #{titulo}"
        @titulo = recuperar_dados("features/arquivos/roteiro.txt")
        input_criar_titulo.set(@titulo[0].to_s)
    end

    
    def informar_titulo_incluir
        puts "setar o título: #{@titulo}"
        @titulo = recuperar_dados("features/arquivos/roteiro.txt")
        input_titulo.set(@titulo[0].to_s)
    end

    def informar_dados_roteiro
        puts "Informar dados da mensagem"
        sleep 2
        @alt = rand(100).chr
        puts "valor gerado #{@alt}" 
        input_criar_titulo.set("Teste Automatizado QA #{@alt}")
        @msg = "Teste Automatizado QA #{@alt}"
        gravar_dados("features/arquivos/roteiro.txt", @msg)
        select_habilidades.set("teste")
        sleep 2
        select_habilidades.send_keys(:enter)
        select_categoria.set("teste")
        select_categoria.send_keys(:enter)
        input_texto.set("TESTES AUTOMATIZADOS")
    end

    def alterar_dados_roteiro
        puts "Alterar dados da roteiro"
        select_habilidades.set("CHAT_NUCLEO_AUTO")
        sleep 2
        select_habilidades.send_keys(:enter)
        select_categoria.set("teste alterar")
        select_categoria.send_keys(:enter)
        sleep 2
        input_texto.set("ALTERAÇÃO TESTES QA")

    end


end    