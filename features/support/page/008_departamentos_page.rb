class DepartamentosPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_nome, '.name'
    element :input_email, '#email'
    element :input_dominio_empresa, '#slug'
    element :input_email_departamento, '#registration-email'
    element :btn_busca, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_departamento, :xpath, '//*[@id="new-department"]/a/button'
    element :btn_editar, '#edittooltip'
    element :btn_deletar, '#deletetooltip'


    # methods 
 
     
    
    def clicar_botao_busca
        puts 'clicar no botão busca '
        botao_busca.click
    end
   
    
    def clicar_btn_adicionar_departamento
        puts 'clicar no botão adicionar departamento '
        btn_adicionar_departamento.click
    end
     
    
    def clicar_botao_editar
        puts 'clicar no botao editar '
        botao_editar.click
    end
   
    
    def clicar_botao_deletar
        puts 'clicar no botao deletar '
        botao_deletar.click
    end
        

    def clicar_btn_confirmar
        puts "clicar btn confirmar"
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end


    def informar_nome(nome)
        puts "setar o título: #{nome}"
        input_nome.set(nome)
    end



    def informar_dados_departamento
        puts "Informar dados do departamento"
        input_nome.set("Teste Automatizado")
        input_email.set("porto_teste@gmail.com")
    end
   



end
   
   