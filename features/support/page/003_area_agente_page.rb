class AreaDoAgentePage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    element :indic_abertas, '#open-indicator'
    element :indic_aguardando, '#waiting-indicator'
    element :indic_vencidas, '#overdue-indicator'
    element :indic_a_vencer, '#bursting-indicator'
    element :indic_csat, '#csat-indicator'
    element :btn_fullscreen, :xpath, '//*[@class="bx bx-fullscreen"]'
    element :btn_notifications, '#page-header-notifications-dropdown'
    element :btn_header_status, '#page-header-user-dropdown'
    element :btn_fila_atendimento, '#counterTootip'
    element :btn_online_item, '#onlineTooltip'
    element :btn_volta_breve_item, '#backsoonTooltip'
    element :btn_distante_item, '#awayTooltip'
    element :btn_widgetas, :xpath, '//*[@class="btn btn-primary pt-2 pb-2 pl-0 pr-0"]'
    element :btn_historico_engaj, "#engagement-history"
    element :btn_infor_cliente, "#client-info"
    element :btn_mensagens_pre, "//*[contains(text(), 'Widgets')]/../../div[2]/div[3]"
    element :btn_roteiros, :xpath, "//*[contains(text(), 'Widgets')]/../../div[2]/div[4]"
    element :btn_bloco_de_notas, :xpath, "//*[contains(text(), 'Widgets')]/../../div[2]/div[5]"
    element :btn_opcoes_conversa, '#moreOptionsButton'
    element :btn_atendimento, '#custom-widget-0'
    element :input_buscar_item, '#searchInput'
    element :text_transf_atendimento, :xpath, "//*[contains(text(), 'ALT + T')]"
    element :text_tabulacao, :xpath, "//*[contains(text(), 'ALT + I')]"
    element :text_encerrar_conv, :xpath, "//*[contains(text(), 'ALT + C')]"
    element :text_menssag_privada, :xpath, "//*[contains(text(), 'ALT + P')]"
    element :text_baixar_conversa, :xpath, "//*[contains(text(), 'ALT + X')]"
    

    
    
    
    
    
    
    # methods 

    
    
    def clicar_btn_widgetas
        puts 'clicar no botão widgetas'
        btn_widgetas.click
    end

     

    def clicar_btn_historico_engaj
        puts 'clicar no botão historico_engaj'
        btn_historico_engaj.click
    end

     

    def clicar_btn_infor_cliente
        puts 'clicar no botão infor_cliente'
        btn_infor_cliente.click
    end
      
    
    
    def clicar_btn_mensagens_pre
        puts 'clicar no botão mensagens_pre'
        btn_mensagens_pre.click
    end

     

    def clicar_btn_roteiros
        puts 'clicar no botão roteiros'
        btn_roteiros.click
    end

     

    def clicar_btn_bloco_de_notas
        puts 'clicar no botão bloco_de_notas'
        btn_bloco_de_notas.click
    end
    
     

    def clicar_btn_opcoes_conversa
        puts 'clicar no botão opcoes_conversa'
        btn_opcoes_conversa.click
    end
        
     

    def clicar_btn_
        puts 'clicar no botão '
        btn_.click
    end
        
     

    def clicar_btn_
        puts 'clicar no botão '
        btn_.click
    end
            
     

    def clicar_btn_
        puts 'clicar no botão '
        btn_.click
    end
        
     

    def clicar_btn_
        puts 'clicar no botão '
        btn_.click
    end
            
     

    def clicar_btn_
        puts 'clicar no botão '
        btn_.click
    end

    
    
    
    
    def clicar_btn_abertas
        puts 'clicar no botão abertas'
        btn_abertas.click
    end

     

    def clicar_btn_aguardando
        puts 'clicar no botão aguardando'
        btn_aguardando.click
    end

     

    def clicar_btn_vencidas
        puts 'clicar no botão vencidas'
        btn_vencidas.click
    end

     

    def clicar_btn_a_vencer
        puts 'clicar no botão a vencer'
        btn_a_vencer.click
    end

     

    def clicar_btn_csat
        puts 'clicar no botão csat'
        btn_csat.click
    end

     

    def clicar_btn_fullscreen
        puts 'clicar no botão fullscreen'
        btn_fullscreen.click
    end
    
     

    def clicar_btn_notifications
        puts 'clicar no botão notificationss'
        btn_notifications.click
    end

     

    def clicar_btn_header_status
        puts 'clicar no botão header status'
        btn_header_status.click
    end

     

    def clicar_btn_fila_atendimento
        puts 'clicar no botão fila_atendimento'
        btn_fila_atendimento.click
    end

     

    def clicar_btn_onlinetooltip_item
        puts 'clicar no botão onlinetooltip item'
        btn_onlinetooltip_item.click
    end


     
    def clicar_btn_backsoontooltip_item
        puts 'btn backsoontooltip item'
        btn_backsoontooltip_item.click
    end
    

     
    def clicar_btn_awaytooltip_item
        puts 'btn awaytooltip item'
        btn_awaytooltip_item.click
    end
 

end