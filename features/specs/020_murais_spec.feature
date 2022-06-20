#language: pt

@Suite_murais
@murais
Funcionalidade: murais

         
    @incluir_murais
    Cenario: Incluir murais
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu murais
        E clico no botão Adicionar mural
        E informo os dados da mural
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Mural adicionado"
    
    @validar_dados_obrigatorios_murais
    Cenario: Validar dados obrigatórios murais
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu murais
        E clico no botão Adicionar mural
        E informo uma habilidade mural
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Categoria é obrigtório"

    @alterar_murais
    Cenario: Alterar murais
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu murais
        E informo o titulo na tela de consulta mural
        E clico no botão Buscar
        E clico em Editar mural
        E edito os dados da mural
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Mural atualizado"
        
    @deletar_murais
    Cenario: Deletar murais
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu murais
        E informo o titulo na tela de conslta mural
        E clico no botão Buscar
        E clico em deletar mural
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Mural deletado" 