class EmpresaPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    element :input_email, ".email"
    element :input_site, ".domain"
    element :input_cep, ".cep"
    element :input_endereco, ".address"
    element :input_bairro, ".neighborhood"
    element :input_cidade, ".city"
    element :input_estado, ".state"
    element :input_responsavel, ".responsible"
    element :input_ramo_de_atividade, ".activities"
    element :input_telefone_empresa, ".clientnumber"
    element :input_telefone_responsavel, ".responsiblenumber"
    element :input_observacao, ".observation"


     # methods 

    

    def clicar_btn_confirmar
        puts "clicar btn confirmar"
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end



end