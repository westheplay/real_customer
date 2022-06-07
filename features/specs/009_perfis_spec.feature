#language: pt

@Suite_perfis
@perfis
Funcionalidade: Perfis

         
    @incluir_perfis
    Cenario: Incluir perfil
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu perfis
        E clico no botão Adicionar perfil
        E informo os dados do perfil
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Perfil adicionado com sucesso"
    
    @validar_dados_obrigatorios_perfis
    Cenario: Validar dados obrigatórios perfis
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu perfis
        E clico no botão Adicionar perfil
        E informo o nome do perfil 
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Campo obrigatório"

    @alterar_perfis
    Cenario: Alterar perfil
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu perfis
        E informo o nome na tela de consulta
        E clico no botão Buscar
        E clico em Editar perfil
        E edito os dados do perfil
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Perfil atualizado com sucesso"
        
    @deletar_perfis
    Cenario: Deletar perfil
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu perfis
        E informo o nome na tela de conslta perfil
        E clico no botão Buscar
        E clico em deletar perfil
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "perfil deletada com sucesso"    