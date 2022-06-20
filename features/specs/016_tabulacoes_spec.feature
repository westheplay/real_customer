#language: pt

@Suite_tabulacoes
@tabulacoes
Funcionalidade: tabulacoes

         
    @incluir_tabulacoes
    Cenario: Incluir tabulacoes
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu tabulacoes
        E clico no botão Adicionar tabulacoes
        E informo os dados da tabulacao
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Tabulação adicionada com sucesso"
    
    @validar_dados_obrigatorios_tabulacoes
    Cenario: Validar dados obrigatórios tabulacoes
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu tabulacoes
        E clico no botão Adicionar tabulacoes
        #E informo o nome da tabulacao
        E clico no checkbox global tabulações
        Entao o sistema deve exibir a mensagem "Minimo 3 caracteres"

    @alterar_tabulacoes
    Cenario: Alterar tabulacoes
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu tabulacoes
        E informo o nome na tela de consulta tabulacoes
        E clico no botão Buscar
        E clico em Editar tabulacao
        E edito os dados da tabulacao
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Tabulação atualizada com sucesso"
        
    @deletar_tabulacoes
    Cenario: Deletar tabulacoes
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu tabulacoes
        E informo o nome na tela de consulta tabulacoes
        E clico no botão Buscar
        E clico em deletar tabulacao
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Tabulação deletada com sucesso" 