class DisponibilidadePage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_name, "#name"
    element :btn_buscar, :xpath, '//*[contains(text(),"Buscar")]'
    element :btn_adicionar_disponibilidades, :xpath, '//*[contains(text(),"Adicionar Disponibilidades")]'
    element :btn_editar, "#edit", match: :first
    element :btn_deletar, "#deletetooltipc37a5205-a3b1-46e6-b5f0-212eb051e740", match: :first
    element :input_descricao, "#description"
    element :select_tipo, "#type"



     # methods 

    def informar_nome_consulta_disponibilidade
        @titulo = recuperar_dados("features/arquivos/disponibilidade.txt")
        input_name.set(@titulo[0].to_s)
    end

    
    
    
    def preencher_input_name
        puts 'preencher no input name'
        @titulo = recuperar_dados("features/arquivos/disponibilidade.txt")
        input_name.set(@titulo[0].to_s)
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end

    

    def clicar_btn_adicionar_disponibilidade
        puts 'clicar no btn adicionar disponibilidade'
        btn_adicionar_disponibilidades.click
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


    def informar_dados_disponibilidade
        puts "informar dados disponibilidade"
        variavel_nome = ['abb', 'aaa', 'fgj', 'fgy']
        variavel2 = rand(5)
        teste = variavel_nome[variavel2]
        input_name.set("Disponibilidade teste #{teste}")
        @msg = "Disponibilidade teste #{teste}"
        gravar_dados("features/arquivos/disponibilidade.txt", @msg)
        select_tipo.select("AUSENTE")
        input_descricao.set("teste disponibilidade descrição")
    end

    
    def editar_dados_disponibilidade
        puts "editar dados disponibilidade"
        @titulo = recuperar_dados("features/arquivos/disponibilidade.txt")
        input_name.set(@titulo[0].to_s)
        select_tipo.select("PRÉ-PAUSA")
        input_descricao.set("teste disponibilidade descrição teste")
    end



end