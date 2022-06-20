#language: pt

@Suite_canais
@canais
Funcionalidade: canais

         
    @incluir_canais
    Cenario: Incluir canal
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu canais
        E clico no botão Adicionar canal
        E informo os dados do canal
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Canal adicionado com sucesso"
    
    @validar_dados_obrigatorios_canais
    Cenario: Validar dados obrigatórios canais
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu canais
        E clico no botão Adicionar canal
        E informo o nome do canal 
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Minimo 3 caracteres"

    @alterar_canais
    Cenario: Alterar canal
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu canais
        E informo o nome na tela de consulta canal
        E clico no botão Buscar
        E clico em Editar canal
        E edito os dados do canal
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Canal atualizado com sucesso"
        
    @deletar_canais
    Cenario: Deletar canal
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu canais
        E informo o nome na tela de conslta canal
        E clico no botão Buscar
        E clico em deletar canal
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Canal deletado com sucesso" 