#language: pt

@Suite_excecao
@excecao
Funcionalidade: Cadastro de exceção

         
    @incluir_excecao
    Cenario: Incluir exceção
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu exceção
        E clico no botão Adicionar exceção
        E informo os dados da exceção
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Exceção adicionada"
    
    @validar_dados_obrigatorios_excecao
    Cenario: Validar dados obrigatórios exceção
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu exceção
        E clico no botão Adicionar exceção
        E informo o nome da exceção 
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Fuso horário é obrigatório"

    @alterar_excecao
    Cenario: Alterar exceção
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu exceção
        E informo o nome na tela de consultar exceção
        E clico no botão Buscar
        E clico em Editar exceção
        E edito os dados da exceção
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Exceção atualizada"
        
    @deletar_excecao
    Cenario: Deletar exceção
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu exceção
        E informo o nome na tela de consultar exceção
        E clico no botão Buscar
        E clico em deletar exceção
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Exceção deletada" 