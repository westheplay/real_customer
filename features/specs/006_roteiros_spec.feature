#language: pt

@Suite_roteiros
@roteiros
Funcionalidade: Roteiros

        
    @incluir_roteiros
    Cenario: Incluir roteiro
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu roteiros
        E clico no botão Adicionar roteiro
        E informo os dados do roteiro
        # E adiciono um arquivo
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "scripts created"
    
    @validar_dados_obrigatorios_roteiro
    Cenario: Validar dados obrigatórios roteiros
        Dado que eu esteja logado no sistema com um usuario valido
        Quando eu acesso o menu roteiros
        E clico no botão Adicionar roteiro
        E adiciono o Título "Testes Roteiros"
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Selecione uma habilidade ou habilite o modo global"
        E o sistema deve exibir a mensagem "Texto é obrigatório"  

    @alterar_roteiros
    Cenario: Alterar roteiro
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu roteiros
        E informo o Título na tela de consulta
        E clico no botão Buscar
        E clico em Editar roteiro
        E edito os dados do roteiro
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Scripts updated"
        
    @deletar_roteiros
    Cenario: Deletar roteiro
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu roteiros
        E informo o Título na tela de consulta 
        E clico no botão Buscar
        E clico em deletar roteiro
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "scripts deleted"