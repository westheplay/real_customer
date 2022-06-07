#language: pt

@Suite_grupos
@grupos
Funcionalidade: grupos

         
    @incluir_grupos
    Cenario: Incluir grupo
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu grupos
        E clico no botão Adicionar grupo
        E informo os dados do grupo
        E clico no botão Confirmar
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "grupo adicionado com sucesso"
    
    @validar_dados_obrigatorios_grupos
    Cenario: Validar dados obrigatórios grupos
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu grupos
        E clico no botão Adicionar grupo
        E informo o nome do grupo 
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Campo obrigatório"

    @alterar_grupos
    Cenario: Alterar grupo
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu grupos
        E informo o nome na tela de consulta
        E clico no botão Buscar
        E clico em Editar grupo
        E edito os dados do grupo
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "grupo atualizado com sucesso"
        
    @deletar_grupos
    Cenario: Deletar grupo
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu grupos
        E informo o nome na tela de conslta grupo
        E clico no botão Buscar
        E clico em deletar grupo
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "grupo deletada com sucesso" 