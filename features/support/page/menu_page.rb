class MenuPage < SitePrism::Page

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :menu_mural, '//*[@class="bx bx-home-circle"]'
    element :menu_area_agente, '//*[@class="bx bx-chat"]'
    element :menu_area_gestor, '//*[@class="bx bx-layout"]'
    element :menu_real_automation, '//*[@class="mdi mdi-ticket"]'
    element :menu_mensagens_predefinidas, :xpath, '//*[@class="bx bx-message-square-detail"]'
    element :menu_roteiros, '//*[@class="bx bx-copy-alt"]'
    element :menu_empresa, '//*[@class="bx bx-store"]'
    element :menu_departamento, '//*[@class="bx bx-vector"]'
    element :menu_perfis, '//*[@class="mdi mdi-account-lock"]'
    element :menu_usuarios, :xpath, '//*[@class="bx bxs-user-detail"]'
    element :menu_grupos, '//*[@class="bx bx-group"]'
    element :menu_canais, '//*[@class="bx bx-devices"]'
    element :menu_habilidades, '//*[@class="bx bx-bookmark"]'
    element :menu_disponibilidades, '//*[@class="bx bxs-toggle-right"]'
    element :menu_tabulacoes, '//*[@class="mdi mdi-table"]'
    element :menu_pesquisa, '//*[@class="mdi mdi-text-box-search-outline"]'
    element :menu_mensagens_automaticas, 'class="mdi mdi-message-arrow-right-outline"'
    element :menu_funcionalidades, '//*[@class="bx bxs-widget"]'
    element :menu_murais, '//*[@class="mdi mdi-view-dashboard"]'
    element :menu_metas, '//*[@class="mdi mdi-target"]'


    # methods 

    def clicar_menu_mural
        puts 'clicar no menu mural'
        menu_mural.click
    end

    

    def clicar_menu_area_agente
        puts 'clicar no menu area agente'
        menu_area_agente.click
    end

    

    def clicar_menu_area_gestor
        puts 'clicar no menu area gestor'
        menu_area_gestor.click
    end

    

    def clicar_menu_real_automation
        puts 'clicar no menu real automation'
        menu_real_automation.click
    end

    

    def clicar_menu_mensagens_predefinidas
        puts 'clicar no menu mensagens predefinidas'
        menu_mensagens_predefinidas.click
    end

    

    def clicar_menu_empresa
        puts 'clicar no menu empresa'
        menu_empresa.click
    end
    
    

    def clicar_menu_departamento
        puts 'clicar no menu departamento'
        menu_departamento.click
    end

    

    def clicar_menu_perfis
        puts 'clicar no menu perfis'
        menu_perfis.click
    end

    

    def clicar_menu_usuarios
        puts 'clicar no menu usuarios'
        menu_usuarios.click
    end

    

    def clicar_menu_grupos
        puts 'clicar no menu grupos'
        menu_grupos.click
    end

    

    def clicar_menu_canais
        puts 'clicar no menu canais'
        menu_canais.click
    end

    

    def clicar_menu_habilidades
        puts 'clicar no menu habilidades'
        menu_habilidades.click
    end

     

     def clicar_menu_disponibilidades
        puts 'clicar no menu disponibilidades'
        menu_disponibilidades.click
    end
    
    

    def clicar_menu_tabulacoes
        puts 'clicar no menu tabulacoes'
        menu_tabulacoes.click
    end

    

    def clicar_menu_pesquisa
        puts 'clicar no menu pesquisa'
        menu_pesquisa.click
    end

    

    def clicar_menu_mensagens_automaticas
        puts 'clicar no menu mensagens automaticas'
        menu_mensagens_automaticas.click
    end

    

    def clicar_menu_funcionalidades
        puts 'clicar no menu funcionalidades'
        menu_funcionalidades.click
    end

    

    def clicar_menu_murais
        puts 'clicar no menu murais'
        menu_murais.click
    end

    

    def clicar_menu_metas
        puts 'clicar no menu metas'
        menu_metas.click
    end

    

end