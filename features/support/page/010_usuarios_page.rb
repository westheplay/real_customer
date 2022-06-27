class UsuariosPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_filtrar, ".name"
    element :select_habilidade, :xpath, '//*[contains(text(),"Todas as habilidades")]'
    element :select_grupo, :xpath, '//*[contains(text(),"Todos os grupos")]'
    element :select_usuario, :xpath, "//*[contains(text(), 'Todos os perfis')]"
    element :select_status, :xpath, "//*[contains(text(), 'Status')]/../div//input"
    element :btn_editar_usuario, :xpath, '//*[@id="edittooltip0"]', match: :first
    element :btn_filtrar, :xpath, '//*[@class="av-valid"]/div[2]/div/div/button'
    element :btn_buscar, :xpath, '//*[contains(text(),"Buscar")]/../../../button'
    element :btn_adicionar_usuario, :xpath, '//*[contains(text(),"Adicionar usuário")]'
    element :btn_acao, :xpath, '//*[contains(text(),"Ação")]'
    element :btn_generate_passuord, :xpath, '//*[contains(text(), "Generate")]'
    element :input_name, '#name'
    element :input_email, "#registration-email"
    element :input_maximo_conversa, "#max-chats"
    element :input_apelido, "#nickname"
    element :input_matricula, "#matricula"
    element :input_informe_empresa, "#empresa"
    element :input_nova_senha, :xpath, '//*[@class="form-control"]'
    element :input_confirmar_senha, :xpath, '//*[@class="form-control "]'
    element :select_perfil, "#profile"
    element :input_habilidade_criar, :xpath, '//*[contains(text(),"Habilidades")]/../div//input'
    element :input_grupo_criar, :xpath, "//*[contains(text(), 'Grupo')]/../div//input"
    


     # methods 
    
    
    def informar_status_usuario(status)
        puts "status informado: #{status}"
        sleep 1
        select_status.set(status)
        sleep 1
        select_status.send_keys(:enter)
    end



    def informar_nome_consulta
        puts "setar o nome na tela de consulta"
        @titulo = recuperar_dados("features/arquivos/usuario.txt")
        input_name.set(@titulo[0].to_s)
        informar_status_usuario("Ativos")
    end


   def informar_nome
       puts "setar o nome do usuario"
       @titulo = recuperar_dados("features/arquivos/usuario.txt")
        input_name.set(@titulo[0].to_s)
   end



    def clicar_btn_filtrar
        puts 'clicar no btn filtrar'
        btn_filtrar.click
    end

    def clicar_btn_editar_usuario
        puts 'Clicar em editar usuário'
        btn_editar_usuario.click
    end


    def clicar_btn_buscar
        puts 'clicar no btn buscar usuario'
        sleep 1
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_usuario
        puts 'clicar no btn adicionar usuario'
        btn_adicionar_usuario.click
    end

    

    def clicar_btn_acao
        puts 'clicar no btn acao'
        btn_acao.click
    end
    
            

    def clicar_btn_confirmar
        puts "clicar btn confirmar"
        sleep 3
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end


    
    def informar_dados_usuario
        puts "Informar dados do usuario"
        sleep 1
        variavel_texto = ['abc', 'aei', 'fgj', 'fgy']
        variavel_random = rand(5)
        @teste = variavel_texto[variavel_random]
        input_name.set("usuario #{@teste} Teste Automatizado")
        @msg = "usuario #{@teste} Teste Automatizado"
        gravar_dados("features/arquivos/usuario.txt", @msg)
        @alt = rand(1000)
        input_email.set("robsonteste#{@alt}@tech.com")
        input_maximo_conversa.set("2")
        input_apelido.set("testeQA")
        sleep 2
        select_perfil.select("agent")
        input_habilidade_criar.set("TESTE_AUTOMACOES")
        input_habilidade_criar.send_keys(:enter)
        sleep 2
        input_grupo_criar.set("Grupo")
        input_grupo_criar.send_keys(:enter)
        sleep 2
        input_nova_senha.set("Tech123*")
        input_confirmar_senha.set("Tech123*")
    end


    def alterar_dados_usuario
        puts "alterar dados do usuario"
        @titulo = recuperar_dados("features/arquivos/usuario.txt")
        input_name.set(@titulo[0].to_s)
        @alt = rand(1000)
        input_email.set("robsonteste#{@alt}@tech.com")
        input_maximo_conversa.set("2")
        input_apelido.set("testeQA")
        sleep 2
        select_perfil.select("manager")
        sleep 2
        input_habilidade_criar.set("CHAT_NUCLEO_AUTO")
        input_habilidade_criar.send_keys(:enter)
        input_grupo_criar.set("Grupo Teste Um")
        input_grupo_criar.send_keys(:enter)
    end

end    