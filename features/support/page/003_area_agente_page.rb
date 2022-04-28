class AreaDoAgentePage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    element :btn_abertas, '#open-indicator'
    element :btn_aguardando, '#waiting-indicator'
    element :btn_vencidas, '#overdue-indicator'
    element :btn_a_vencer, '#bursting-indicator'
    element :btn_csat, '#csat-indicator'
    element :btn_fullscreen, :xpath, '//*[@class="bx bx-fullscreen"]'
    element :btn_notifications, '#page-header-notifications-dropdown'
    element :btn_header_item, '#page-header-user-dropdown'
    element :btn_countertooltip_item, '#counterTootip'
    element :btn_onlinetooltip_item, '#onlineTooltip'
    element :btn_backsoontooltip_item, '#backsoonTooltip'
    element :btn_awaytooltip_item, '#awayTooltip'
    element :input_buscar_item, '#searchInput'
    


    # methods 

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

     

    def clicar_btn_header_item
        puts 'clicar no botão header item'
        btn_header_item.click
    end

     

    def clicar_btn_countertooltip_item
        puts 'clicar no botão countertooltip item'
        btn_countertooltip_item.click
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