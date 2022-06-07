#language: pt

@Suite_usuarios
@usuarios
Funcionalidade: usuarios

         
    @incluir_usuarios
    Cenario: Incluir usuario
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu usuarios
        E clico no botão Adicionar usuario
        E informo os dados do usuario
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Usuário adicionado com sucesso"
    
    @validar_dados_obrigatorios_usuarios
    Cenario: Validar dados obrigatórios usuarios
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu usuarios
        E clico no botão Adicionar usuario
        E informo o nome do usuario 
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Campo obrigatório"

    @alterar_usuarios
    Cenario: Alterar usuario
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu usuarios
        E informo o nome na tela de consulta
        E clico no botão Buscar usuario
        E clico em Editar usuario
        E edito os dados do usuario
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Usuário atualizado com sucesso"
        
      