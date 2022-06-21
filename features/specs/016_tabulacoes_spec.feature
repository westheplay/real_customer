#language: pt

@Suite_tabulacoes
@tabulacoes
Funcionalidade: Tabulações

         
    @incluir_tabulacoes
    Cenario: Incluir tabulações
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu tabulações
        E clico no botão Adicionar tabulações
        E informo os dados da tabulação
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Tabulação adicionada com sucesso"
    
    @validar_dados_obrigatorios_tabulacoes
    Cenario: Validar dados obrigatórios tabulações
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu tabulações
        E clico no botão Adicionar tabulações
        #E informo o nome da tabulação
        E clico no checkbox global tabulações
        Entao o sistema deve exibir a mensagem "Minimo 3 caracteres"

    @alterar_tabulacoes
    Cenario: Alterar tabulações
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu tabulações
        E informo o nome na tela de consultar tabulações
        E clico no botão Buscar
        E clico em Editar tabulação
        E edito os dados da tabulação
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Tabulação atualizada com sucesso"
        
    @deletar_tabulacoes
    Cenario: Deletar tabulações
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu tabulações
        E informo o nome na tela de consultar tabulações
        E clico no botão Buscar
        E clico em deletar tabulação
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Tabulação deletada com sucesso" 