class MuralPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    element :btn_home, :xpath, '//header//div[2]/nav/div/ul/li[1]/a'
    element :btn_produtos, :xpath, '//header/div[2]//nav/div/ul/li[2]/a'
    element :btn_quem_somos, :xpath, '//header/div[1]//div[2]/nav/div/ul/li[3]/a'
    element :btn_blog, :xpath, '//header/div[1]//div[2]/nav/div/ul/li[4]/a'
    element :btn_fale_conosco, :xpath, '//header/div[1]//div[2]/nav/div/ul/li[5]/a'
    element :btn_login, :xpath, '//header/div[1]//div[2]/nav/div/ul/li[6]/a'
    element :btn_saiba_mais, 'a[class="theme-btn style-one]'
    element :btn_saber_mais, "//*[contains(text(), 'Saber Mais')]"
    element :btn_saiba_como, "//*[contains(text(), 'Saiba Como')]"
    element :btn_saiba_agora, "//*[contains(text(), 'Saiba Agora')]"
    element :btn_OmniChannel, "//*[contains(text(), 'OmniChannel')]" 
    element :btn_Front_on_Demand, "//*[contains(text(), 'Front on Demand')]"
    element :btn_Fluid_Experience, "//*[contains(text(), 'Fluid Experience')]"
    element :btn_Call_to_Message_e_Audio_to_Message, "//*[contains(text(), 'Call-to-Message e Audio-to-Message')]"
    element :btn_Intelligent_Base, "//*[contains(text(), 'Intelligent Base')]"
    element :btn_SmartQueue, "//*[contains(text(), 'SmartQueue')]"
    element :btn_iah_saiba_mais, :xpath, '//*[@class="theme-btn style-three"]'
    element :btn_ajuda, :xpath, '//*[@class="launcher-button elements__Wrapper-sc-4gy1pz-0 gYHJbz"]'
    element :btn_acroll_top, :xpath, "//*[@class='scroll-top scroll-to-target open']"
    element :text_saiba_mais, :xpath, '//footer/div/div/ul/li[1]/a'
    element :text_politicas_de_privacidade, :xpath, '//footer/div/div/ul/li[2]/a'



    # methods 

    def clicar_btn_home
        puts 'clicar no botão home'
        btn_home.click
    end

     

    def clicar_btn_produtos
        puts 'clicar no botão produtos'
        btn_produtos.click
    end

     

    def clicar_btn_quem_somos
        puts 'clicar no botão quem somos'
        btn_quem_somos.click
    end

     

    def clicar_btn_blog
        puts 'clicar no botão blog'
        btn_blog.click
    end

     

    def clicar_btn_fale_conosco
        puts 'clicar no botão fale conosco'
        btn_fale_conosco.click
    end

     

    def clicar_btn_login
        puts 'clicar no botão login'
        btn_login.click
    end
    
     

    def clicar_btn_saiba_mais
        puts 'clicar no botão saiba mais'
        btn_saiba_mais.click
    end

     

    def clicar_btn_saber_mais
        puts 'clicar no botão saber mais'
        btn_saber_mais.click
    end

     

    def clicar_btn_saiba_como
        puts 'clicar no botão saiba como'
        btn_saiba_como.click
    end

     

    def clicar_btn_saiba_agora
        puts 'clicar no botão saiba agora'
        btn_saiba_agora.click
    end


     
    def clicar_btn_omnichannel
        puts 'btn OmniChannel'
        btn_omnichannel.click
    end

      

    def clicar_btn_front_on_demand
        puts 'clicar no btn Front on Demand'
        btn_front_on_demand.click
    end
    
     

    def clicar_btn_fluid_experience
        puts 'clicar btn Fluid Experience'
        btn_fluid_experience.click
    end

     

    def clicar_btn_call_to_message_e_audio_to_message
        puts 'clicar no btn Call to Message e Audio to Message'
        btn_call_to_message_e_audio_to_message.click
    end

     

    def clicar_btn_intelligent_base
        puts 'clicar no btn Intelligent Base'
        menu_btn_intelligent_base.click
    end

     

    def clicar_btn_smartqueue
        puts 'clicar no btn SmartQueue'
        btn_smartqueue.click
    end


    def clicar_btn_iah_saiba_mais
        puts 'clicar no btn iah saiba mais'
        btn_iah_saiba_mais.click
    end
 
    

    def clicar_btn_ajuda
        puts 'clicar no btn ajuda'
        btn_ajuda.click
    end
    

    def clicar_btn_acroll_top
        puts 'clicar no btn acroll top'
        btn_acroll_top.click
    end
   
end