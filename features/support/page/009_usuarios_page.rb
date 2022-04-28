class UsuariosPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_filtrar, ".name"
    element :select_habilidade, "//*[contains(text(), 'Todas as habilidades')]"
    element :select_grupo, '//*[contains(text(), "Todos os grupos")]'
    element :select_perfil, "//*[contains(text(), 'Todos os perfis')]"
    element :select_status, "//*[contains(text(), 'Todos os status')]"
    element :btn_filtrar, '//*[@class="av-valid"]/div[2]/div/div/button'
    element :btn_buscar, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_usuario, '//*[contains(text(),"Adicionar usuário")]'
    element :btn_acao, '//*[contains(text(),"Ação")]'
    element :btn_generate_passuord, '//*[contains(text(), "Generate")]'
    element :input_name, '#name'
    element :input_email, "#registrationemail"
    element :input_maximo_conversa, "#max-chats"
    element :input_apelido, "#nickname"
    element :input_matricula, "#matricula"
    element :input_informe_empresa, "#empresa"
    element :input_nova_senha, :xpath, '//*[@class="form-control"]'
    element :input_confirmar_senha, :xpath, '//*[@class="form-control "]'
    element :select_perfil, "#profile"
    element :select_habilidade, :xpath, '//*[@class="control-label"]/../../div[2]/div[1]'
    element :select_grupo, :xpath, '//*[@class="control-label"]/../../div[3]/div[1]'






     # methods 



    def clicar_btn_filtrar
        puts 'clicar no btn filtrar'
        btn_filtrar.click
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
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
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end
    




end    