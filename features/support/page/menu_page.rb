class MenuPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :menu_mural, :xpath, '//*[@class="bx bx-home-circle"]'
    element :menu_area_agente, :xpath, '//*[@class="bx bx-chat"]'
    element :menu_area_gestor, :xpath, '//*[@class="bx bx-layout"]'
    element :menu_real_automation, :xpath, '//*[@class="mdi mdi-ticket"]'
    element :menu_mensagens_predefinidas, :xpath, '//*[@class="bx bx-message-square-detail"]'
    element :menu_roteiros, :xpath, '//*[@class="bx bx-copy-alt"]'
    element :menu_empresa, :xpath, '//*[@class="bx bx-store"]'
    element :menu_departamentos, :xpath, '//*[@class="bx bx-vector"]'
    element :menu_perfis, :xpath, '//*[@class="mdi mdi-account-lock"]'
    element :menu_usuarios, :xpath, '//*[@class="bx bxs-user-detail"]'
    element :menu_grupos, :xpath, '//*[@class="bx bx-group"]'
    element :menu_canais, :xpath, '//*[@class="bx bx-devices"]'
    element :menu_habilidades, :xpath, '//*[@class="bx bx-bookmark"]'
    element :menu_disponibilidades, :xpath, '//*[@class="bx bxs-toggle-right"]'
    element :menu_tabulacoes, :xpath, '//*[@class="mdi mdi-table"]'
    element :menu_pesquisa, :xpath, '//*[@class="mdi mdi-text-box-search-outline"]'
    element :menu_mensagens_automaticas, :xpath, 'class="mdi mdi-message-arrow-right-outline"'
    element :menu_funcionalidades, :xpath, '//*[@class="bx bxs-widget"]'
    element :menu_murais, :xpath, '//*[@class="mdi mdi-view-dashboard"]'
    element :menu_metas, :xpath, '//*[@class="mdi mdi-target"]'
    element :menu_execao, :xpath, '//*[@id="side-menu"]/li[14]/a/i'


    # methods 

    
    def clicar_menu_execao
        puts 'clicar no menu exeção'
        menu_execao.click
    end

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
    
    

    def clicar_menu_departamentos
        puts 'clicar no menu departamentos'
        menu_departamentos.click
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


    
    
    def clicar_menu_roteiros
        puts 'clicar no menu roteiros'
        menu_roteiros.click
    end

    

end