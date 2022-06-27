class PerfisPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_nome, "#name"
    element :input_descricao, "#description"
    element :btn_buscar, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_perfil, :xpath, '//*[contains(text(),"Adicionar perfil")]'
    element :btn_editar, "#edittooltip", match: :first
    element :btn_deletar, "#deletetooltip", match: :first
    element :input_profile_nome, "#name"
    element :input_descricao, "#description"
    element :select_tipo_permissao, "#role"


     # methods 


     def informar_nome_consulta_perfil
        puts "setar o nome: #{@titulo}"
        @titulo = recuperar_dados("features/arquivos/perfil.txt")
        input_nome.set(@titulo[0].to_s)
    end


    #def informar_nome
        #puts "setar o nome do perfil"
        #input_profile_nome.set("Teste Automatizado Perfil")
    #end


    def informar_nome_perfil
        puts "setar o nome: #{@titulo}"
        @titulo = recuperar_dados("features/arquivos/perfil.txt")
        input_profile_nome.set(@titulo[0].to_s)
    end



    
    def click_btn_editar
        puts 'clicar no botão editar'
        btn_editar.click
    end    
    
    
    def click_btn_deletar
        puts 'clicar no botão deletar'
        btn_deletar.click
    end  

 

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_perfil
        puts 'clicar no btn adicionar perfil'
        btn_adicionar_perfil.click
    end

            

    def clicar_btn_confirmar
        puts "clicar btn confirmar"
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end

    def informar_dados_perfil
        puts "Informar dados do perfil"
        variavel_texto = ['abcd', 'aeio', 'fgji', 'fgyv']
        variavel_random = rand(5)
        @teste = variavel_texto[variavel_random]
        sleep 1
        input_profile_nome.set("Perfil #{@teste} Teste Automatizado")
        @msg = "Perfil #{@teste} Teste Automatizado"
        gravar_dados("features/arquivos/perfil.txt", @msg)
        sleep 2
        select_tipo_permissao.select("agent")
        sleep 2
        input_descricao.set("executando teste automatizado")
    end


    def alterar_dados_perfil
        puts "alterar dados do perfil"
        @titulo = recuperar_dados("features/arquivos/perfil.txt")
        input_profile_nome.set(@titulo[0].to_s)
        select_tipo_permissao.select("manager")
        sleep 2
        input_descricao.set("alterando teste automatizado")
        #execute_script("document.querySelector('#role') = 'manager'")
    end

    

end