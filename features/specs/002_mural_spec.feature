#language: pt

@Suite_mural
@Mural
Funcionalidade: mural_002 - 
    
    @Realizar_loguincom_sucesso
    Cenario: Realizar Loguin com usuário válido
        Dado que eu acesso a página de loguin
        Quando preencho o campo email com "wesley.barros@tech4h.com.br"
        E iformo a senha "Tech123*"
        E informo o domínio "porto"
        E clico no botão Entrar 
        Entao o sistema deve exibir a mensagem "Bem vindo à Porto"
    
    @loguin_validar_campos_obrigatorios
    Cenario: Validar campos obrigatorios
        Dado que eu acesso a página de loguin
        Quando clico no botão Entrar 
        Entao deve ser apresentado 3 mensagens de campos obrigatórios