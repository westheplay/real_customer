#language: pt

@Suite_execao
@execao
Funcionalidade: execao

         
    @incluir_execao
    Cenario: Incluir execao
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu execao
        E clico no botão Adicionar execao
        E informo os dados da execao
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Exceção adicionado com sucesso"
    
    @validar_dados_obrigatorios_execao
    Cenario: Validar dados obrigatórios execao
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu execao
        E clico no botão Adicionar execao
        E informo o nome da execao 
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Minimo 3 caracteres"

    @alterar_execao
    Cenario: Alterar execao
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu execao
        E informo o nome na tela de consulta
        E clico no botão Buscar
        E clico em Editar execao
        E edito os dados da execao
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Exceção atualizado com sucesso"
        
    @deletar_execao
    Cenario: Deletar execao
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu execao
        E informo o nome na tela de conslta execao
        E clico no botão Buscar
        E clico em deletar execao
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "Exceção deletado com sucesso" 