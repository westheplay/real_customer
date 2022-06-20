#language: pt

@Suite_pesquisas
@pesquisas
Funcionalidade: pesquisas

         
    @incluir_pesquisas
    Cenario: Incluir pesquisa
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu pesquisas
        E clico no botão Adicionar pesquisa
        E informo os dados da pesquisa
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Pesquisa adicionada com sucesso"
    
    @validar_dados_obrigatorios_pesquisas
    Cenario: Validar dados obrigatórios pesquisas
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu pesquisas
        E clico no botão Adicionar pesquisa
        E informo o nome da pesquisa
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Minimo 3 caracteres"

    @alterar_pesquisas
    Cenario: Alterar pesquisas
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu pesquisas
        E informo o nome na tela de consulta pesquisa
        E clico no botão Buscar
        E clico em Editar pesquisa
        E edito os dados da pesquisa
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Pesquisa atualizada com sucesso"
        
    @deletar_pesquisas
    Cenario: Deletar pesquisas
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu pesquisas
        E informo o nome na tela de conslta pesquisa
        E clico no botão Buscar
        E clico em deletar pesquisa
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Pesquisa deletada com sucesso" 