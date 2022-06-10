class DepartamentosPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    

    element :input_criar_nome, '#name'
    element :input_criar_email, '#registration-email'
    element :input_nome, '#name'
    element :input_email, '#email'
    element :input_dominio_empresa, '#slug'
    element :input_email_departamento, '#registration-email'
    element :btn_busca, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_departamento, :xpath, '//*[@id="new-department"]/a/button'
    element :btn_editar, '#edittooltip', match: :first
    element :btn_deletar, '#deletetooltip', match: :first
    element :btn_sim, :xpath, "//*[contains(text(), 'Sim')]"
    element :btn_nao, :xpath, "//*[contains(text(), 'Não')]"


    # methods 
 
        
    
    def clicar_btn_sim
        puts 'clicar no botão sim '
        btn_sim.click
    end  
    
    
    def clicar_btn_nao
        puts 'clicar no botão não '
        btn_nao.click
    end

    
    def clicar_botao_busca
        puts 'clicar no botão busca '
        botao_busca.click
    end
   
    
    def clicar_btn_adicionar_departamento
        puts 'clicar no botão adicionar departamento '
        btn_adicionar_departamento.click
    end
     
    
    def clicar_btn_editar
        puts 'clicar no botao editar '
        btn_editar.click
    end
   
    
    def clicar_btn_deletar
        puts 'clicar no botao deletar '
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


    def informar_nome
        puts "setar o título: #{@titulo}"
        @titulo = recuperar_dados("features/arquivos/departamento.txt")
        input_nome.set(@titulo[0].to_s)
    end



    def informar_nome_incluir
        puts "setar o título: #{@titulo}"
        @titulo = recuperar_dados("features/arquivos/departamento.txt")
        input_nome.set(@titulo[0].to_s)
    end



    def alterar_dados_departamento
        puts "Alterar dados do departamento"
        input_nome.set("Teste Automatizado teste")
        select_habilidades.send_keys(:enter)
        sleep(0.05)
        input_criar_email.set("testeautomatizado123@gmail.com")
    end



    def informar_dados_departamento
        puts "Informar dados do departamento"
        sleep 3
        @alt = rand(100)
        input_criar_nome.set("Teste Automatizado #{@alt}")
        @msg = "Teste Automatizado #{@alt}"
        gravar_dados("features/arquivos/departamento.txt", @msg)
        sleep 2
        @alt = rand(100)
        input_criar_email.set("testeautomatizado#{@alt}@gmail.com")
    end

    def alterar_dados_departamento
        puts "Alterar dados do departamento"
        @titulo = recuperar_dados("features/arquivos/departamento.txt")
        input_nome.set(@titulo[0].to_s)
        @alt = rand(100)
        input_criar_email.set("testeautomatizado#{@alt}@gmail.com")
      

    end
   



end
   
   