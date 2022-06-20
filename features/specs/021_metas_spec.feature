#language: pt

@Suite_metas
@metas
Funcionalidade: metas

         
    @incluir_metas
    Cenario: Incluir metas
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu metas
        E clico no botão Adicionar meta
        E informo os dados da meta
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Meta adicionada"
    
    @validar_dados_obrigatorios_metas
    Cenario: Validar dados obrigatórios metas
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu metas
        E clico no botão Adicionar meta
        E informo o nome da meta
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Tipo é obrigatório"

    @alterar_metas
    Cenario: Alterar metas
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu metas
        E informo o nome na tela de consulta meta
        E clico no botão Buscar
        E clico em Editar meta
        E edito os dados da meta
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Meta atualizada"
        
    @deletar_metas
    Cenario: Deletar metas
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu metas
        E informo o nome na tela de consulta meta
        E clico no botão Buscar
        E clico em deletar meta
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Meta deletada" 