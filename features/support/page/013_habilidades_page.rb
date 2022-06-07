class HabilidadesPage < PageHelper

    # Pega a URL default
    set_url ""
   
    include Capybara::DSL
    include RSpec::Matchers
    
    # Elements
    
    
    element :input_name, "#name"
    element :btn_buscar, '//*[@type="submit"]'
    element :btn_adicionar_habilidades, '//*[contains(text(),"Adicionar habilidade")]'
    element :btn_usuario_btn, :xpath, '//*[@class="list-user-dropdown dropleft dropdown show"]'
    element :btn_editar, "#edittooltip0"
    element :input_nome_habilidade, ".skillname"
    element :selecct_cor, :xpath, '//*[@class="input-group-text colorpicker-input-addon"]'
    element :input_tempo_inatividade_ex, ".skillinactivitytime"
    element :select_inatividade_segundos, :xpath, '//*[@id="layout-wrapper"]/div[2]//form/div[1]/div[1]/div[2]//div[1]/div[2]/div[2]/div'
    element :input_peso_atual, '#skillactiveweightvalue'
    element :input_peso_inativa, '#skillinactiveweightvalue'
    element :input_slas_padrao_ex, :xpath, '//*[@id="layout-wrapper"]/div[2]/div//div[2]//form/div[1]/div[1]/div[4]//div[1]/div[1]/div/div[2]/input'
    element :input_first_time_sla_ex, '/html/body/div/div[2]//div[2]//form/div[1]/div[1]/div[4]//div[2]/div[1]/div/div[2]/input'
    element :select_slas_segundos, :xpath, '//*[@id="layout-wrapper"]/div[2]//div[2]/div//form/div[1]/div[1]/div[4]//div[1]/div[1]/div/div[3]/div/div/div[1]'
    element :select_frist_sla_segundos, :xpath, '//*[@id="layout-wrapper"]/div[2]//div[2]/div//form/div[1]/div[1]/div[4]//div[2]/div[1]/div/div[3]/div/div'
    element :select_dia_semana, :xpath, '//*[@class="customButtonDatepicker dropdown-toggle btn btn-light"]'
    element :input_dia_inicio, :xpath, '//div/div[2]/div[2]//div[2]//div/form/div[1]/div[1]/div[5]//div[2]/div//input'
    element :input_dia_fim, :xpath, '//div/div[2]/div[2]//div[2]//div/form/div[1]/div[1]/div[5]//div[2]/div//input'
    element :btn_adicionarl_dia_atividade, '//*[@id="layout-wrapper"]/div[2]/div//div[2]/div/div/div/form/div[1]/div[1]/div[5]//div/div[4]/button'
    element :select_feriado_data, "#date"
    element :input_feriado_inicio, :xpath, '//div/div[2]/div[2]//div[2]/div//div/form/div[1]/div[1]/div[6]/div//div[2]/div//input'
    element :input_feriado_fim, :xpath, '//div/div[2]/div[2]//div[2]//div/form/div[1]/div[1]/div[6]/div//div/div[3]//div/input'
    element :btn_adicionarferiado, :xpath, '//div/div[2]/div[2]//div[2]/div//div/form/div[1]/div[1]/div[6]//div[4]/button'
    element :select_fallback, '#skillfallback'
    element :select_transferencia, "#skilltransfer"
    element :select_csat, "#skillcsat"
    element :select_usuarios_habilidade, "#skillusers"
    element :select_prioridade_volta_fila, "#idea280304-7075-494b-9db9-a1e176967424"
    element :select_prioridade_atendiento, "#idd37384b3-3eab-4ecd-b8f9-9f9ba1082916"
    element :select_padrao, "id54531659-2995-4cd8-800c-6517710acaf9"
    element :switch_distribuicao_avancada, '//*[contains(text(),"Distribuição avançada")]/../../div/div[1]/div'
    element :switch_fechamento_automatico, "#eventToggle-autoClose"
    element :switch_tranferencia_automatica, '//*[contains(text(),"Transferência automática")]/../../div[1]/div'
    element :switch_retorno_inatividade, '//*[contains(text(),"retorno da inatividade")]'
    element :switch_inatividade, '//*[contains(text(),"Inatividade")]'
    element :switch_Usabilidade, '//*[contains(text(),"Usabilidade")]'
    element :input_fechar_inativa, '//*[contains(text(),"Fechar conversas inativas")]/../../div[2]'
    element :select_inativas_dias, '//*[contains(text(),"Fechar conversas inativas")]/../../div[3]'
    element :select_transfere_inativas, '//*[contains(text(),"Transferir conversas inativas")]/../../div[2]'
    element :input_tranferir_inativa_ex, '//*[contains(text(),"Transferir conversas inativas")]/../../../div[3]/div[2]'
    element :select__inativa_apos_minutos, '//*[contains(text(),"Transferir conversas inativas")]/../../../div[3]/div[3]'
    element :input__ociosidade_cliente_ex, '//*[contains(text(),"Ociosidade do cliente")]/../../../div[3]/div[2]'
    element :select__ociosidade_cliente_minutos, '//*[contains(text(),"Ociosidade do cliente")]/../../../div[3]/div[3]'
    element :input__ociosidade_fila_ex, '//*[contains(text(),"Ociosidade na fila")]/../../../div[3]/div[2]'
    element :select__ociosidade_fila_minutos, '//*[contains(text(),"Ociosidade na fila")]/../../../div[3]/div[3]'
    element :select__ociosidade_agente_ex, '//*[contains(text(),"Ociosidade do agente")]/../../../div[3]/div[2]'
    element :select__ociosidade_agente_minutos, '//*[contains(text(),"Ociosidade do agente")]/../../../div[3]/div[3]'



    # methods 

     
    def preencher_input_name(conteudo)
        puts 'preencher no input name'
        input_name.set(conteudo)
    end

    

    def clicar_btn_buscar
        puts 'clicar no btn buscar'
        btn_buscar.click
    end
    
    

    def clicar_btn_adicionar_habilidades
        puts 'clicar no btn adicionar habilidades'
        btn_adicionar_habilidades.click
    end

    
    

    def clicar_btn_usuario_btn
        puts 'clicar no btn usuario btn'
        btn_usuario_btn.click
    end
    
    

    def clicar_input_buscar_usuario
        puts 'clicar no input buscar usuario'
        input_buscar_usuario.click
    end
     
    

    def clicar_btn_editar
        puts 'clicar no botao editar'
        btn_editar.click
    end
    
    
    def clicar_btn_confirmar
        puts "clicar btn confirmar"
        click_button('Confirmar')
    end

    def clicar_btn_cancelar
        puts "clicar btn cancelar"
        click_button('Cancelar')
    end


end    