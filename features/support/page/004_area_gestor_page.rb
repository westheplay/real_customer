class AreaGestorPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    element :select_periodo, :xpath, '//*[contains(text(), "Últimas")]'
    element :select_habilidade, :xpath, '//*[contains(text(), "habilidades")]'
    element :select_grupos, :xpath, '//*[@id="Popover1"]'
    element :btn_filtros_salvos, :xpath, '//*[@id="Popover2"]'
    element :btn_filtrar, :xpath, '//*[@id="layout-wrapper"]/div[2]/div/div[1]/div//div[4]/div/div/button'
    element :qtd_atividades_atribuidas, :xpath, '//*[@id="tooltip-assigned-chats"]/div[1]/div[2]'
    element :qtd_atividades_abandonadas, :xpath, '//*[@id="tooltip-abandoned-chats"]/div[1]/div[2]'
    element :qtd_atividades_finalizadas, :xpath, '//*[@id="tooltip-closed-chats"]/div[1]/div[2]'
    element :qtd_capacidade, :xpath, '//*[@id="SvgjsG95993"]'
    element :qtd_csat, :xpath, '//*[@id="SvgjsG1406"]'
    element :btn_online, :xpath, '//*[@id="filter"]'
    element :btn_volto_logo, :xpath, '//*[@id="backsoon"]'
    element :btn_ausente, :xpath, '//*[@id="offline"]'
    element :btn_todos_agentes, :xpath, '//*[@id="agents-table-filter-area"]/section[2]/div/button'
    element :btn_conversa_acao, :xpath, "//*[@class='btn waves-effect waves-light w-100 dropdown-toggle btn btn-primary']"
    element :btn_baixar_conversa, :xpath, '//*[@id="tooltipdownload"]'
    element :btn_transferir, :xpath, '//*[@id="tooltiptransfer"]'
    element :btn_fechar, :xpath, '//*[@id="tooltipclose"]'
    element :btn_espiar, :xpath, '//*[@id="tooltipspy"]'


    # methods 

  
    
    def clicar_btn_filtros_salvos
        puts 'clicar no botão filtros salvos'
        btn_filtros_salvos.click
    end
    
    def clicar_btn_filtrar
        puts 'clicar no botão filtrar'
        btn_filtrar.click
    end
    
    def clicar_qtd_atividades_atribuidas
        puts 'clicar no qtd atividades atribuidas'
        qtd_atividades_atribuidas.click
    end
    
    def clicar_qtd_atividades_abandonadas
        puts 'clicar no qtd atividades abandonadas '
        qtd_atividades_abandonadas.click
    end
    
    def clicar_qtd_atividades_finalizadas
        puts 'clicar no qtd atividades finalizadas'
        qtd_atividades_finalizadas.click
    end
    
    def clicar_qtd_capacidade
        puts 'clicar no qtd capacidade'
        qtd_capacidade.click
    end
    
    def clicar_qtd_csat
        puts 'clicar no qtd csat'
        qtd_csat.click
    end
    
    def clicar_btn_online
        puts 'clicar no botão online'
        btn_online.click
    end
    
    def clicar_btn_volto_logo
        puts 'clicar no botão volto logo'
        btn_volto_logo.click
    end
    
    def clicar_btn_ausente
        puts 'clicar no botão ausente'
        btn_ausente.click
    end
    
    def clicar_btn_todos_agentes
        puts 'clicar no botão todos agentes'
        btn_todos_agentes.click
    end
    
    def clicar_btn_conversa_acao
        puts 'clicar no botão conversa acao'
        btn_conversa_acao.click
    end
    
    def clicar_btn_baixar_conversa
        puts 'clicar no botão baixar conversa'
        btn_baixar_conversa.click
    end
    
    def clicar_btn_transferir
        puts 'clicar no botão transferir'
        btn_transferir.click
    end
    
    def clicar_btn_fechar
        puts 'clicar no botão fechar'
        btn_fechar.click
    end
    
    def clicar_btn_espiar
        puts 'clicar no botão espiar'
        btn_espiar.click
    end
  

end