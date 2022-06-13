#language: pt

@Suite_disponibilidade
@disponibilidade
Funcionalidade: disponibilidade

         
    @incluir_disponibilidade
    Cenario: Incluir disponibilidade
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu disponibilidade
        E clico no botão Adicionar disponibilidade
        E informo os dados da disponibilidade
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Status criada"
    
    @validar_dados_obrigatorios_disponibilidade
    Cenario: Validar dados obrigatórios disponibilidade
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu disponibilidade
        E clico no botão Adicionar disponibilidade
        E informo o nome da disponibilidade 
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Campo obrigatório"

    @alterar_disponibilidade
    Cenario: Alterar disponibilidade
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu disponibilidade
        E informo o nome na tela de consulta disponibilidade
        E clico no botão Buscar
        E clico em Editar disponibilidade
        E edito os dados da disponibilidade
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Status atualizado"
        
    @deletar_disponibilidade
    Cenario: Deletar disponibilidade
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu disponibilidade
        E informo o nome na tela de consulta disponibilidade
        E clico no botão Buscar
        E clico em deletar disponibilidade
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Status excluído" 