#language: pt

@Suite_loguin
@Loguin
Funcionalidade:  Realizar Loguin
    
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
    
    @loguin_campos_invalidos
    Cenario: Realizar Loguin com dados inválidos
        Dado que eu acesso a página de loguin
        Quando preencho o campo email com "wesley.barros@tech4h.com.br"
        E iformo a senha "TesteAutomatizado"
        E informo o domínio "porto"
        E clico no botão Entrar 
        Entao o sistema deve exibir a mensagem "e-mail ou senha inválidos"
    
    @loguin_dominio_invalido
    Cenario: Realizar Loguin com domínio inválido
        Dado que eu acesso a página de loguin
        Quando preencho o campo email com "wesley.barros@tech4h.com.br"
        E iformo a senha "Tech123*"
        E informo o domínio "teste automatizado"
        E clico no botão Entrar 
        Entao o sistema deve exibir a mensagem "domínio inválido"
    
    @loguin_recuperar_senha
    Cenario: Realizar Loguin com cliente não digital e com solicitação em andamento
        Dado que eu acesso a página de loguin
        Quando eu clico em Esqueci minha senha
        E informo o domínio "porto"
        E preencho o campo email com "wesley.barros@tech4h.com.br"
        E clico no botãp Recuperar
        Entao o sistema deve exibir a mensagem "Token enviado para o email"