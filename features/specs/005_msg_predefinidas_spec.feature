#language: pt

@Suite_msg_predefinidas
@msg_predefinidas
Funcionalidade: Mensagens predefinidas
    
    
    
    @incluir_msg_predefinida
    Cenario: Incluir mensgem predefinida
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu mensagens predefidas
        E clico no botão Adicionar mensagem predefinida
        E informo os dados da mensagem
        # E adiciono um arquivo
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Mensagem predefinida adicionada com sucesso"
        
    @validar_dados_obrigatorios
    Cenario: Validar dados obrigatórios
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu mensagens predefidas
        E clico no botão Adicionar mensagem predefinida
        E informo o Título "Testes automatizados"
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Selecione uma habilidade ou habilite o modo global"
        E o sistema deve exibir a mensagem "Texto é obrigatório"

    @alterar_msg_predefinida
    Cenario: Alterar mensgem predefinida
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu mensagens predefidas
        E informo o Título na tela de edição "Testes automatizados"
        E clico no botão Buscar
        E clico em Editar mensagem
        E edito os dados da mensgem
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Mensagem predefinida atualizada com sucesso"
        
    @deletar_msg_predefinida
    Cenario: Deletar mensgem predefinida
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu mensagens predefidas
        E informo o Título na tela de edição "Testes automatizados"
        E clico no botão Buscar
        E clico em deletar mensagem
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Mensagem predefinida deletada com sucesso"