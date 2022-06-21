#language: pt

@Suite_grupos
@grupos
Funcionalidade: Grupos

         
    @incluir_grupos
    Cenario: Incluir grupo
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu grupos
        E clico no botão Adicionar grupo
        E informo os dados do grupo
        E clico no botão Confirmar
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Grupo adicionado com sucesso"
    
    @validar_dados_obrigatorios_grupos
    Cenario: Validar dados obrigatórios grupos
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu grupos
        E clico no botão Adicionar grupo
        E informo o nome do grupo 
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "parent_id is not allowed to be empty"

    @alterar_grupos
    Cenario: Alterar grupo
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu grupos
        E informo o nome na tela de consulta grupo
        E clico no botão Buscar
        E clico em Editar grupo
        E edito os dados do grupo
        E clico no botão Confirmar
        #Entao o sistema deve exibir a mensagem "Grupo atualizado com sucesso"
        Entao o sistema deve exibir a mensagem "Agente não pode ter mais de um grupo"
        
    @deletar_grupos
    Cenario: Deletar grupo
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu grupos
        E informo o nome na tela de consulta grupo
        E clico no botão Buscar
        E clico em deletar grupo
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Grupo deletado com sucesso" 
        #Entao o sistema deve exibir a mensagem "O grupo não pode ser deletado pois há usuários ligados a ele"