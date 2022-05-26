#language: pt

@Suite_departamentos
@departamentos
Funcionalidade: Roteiros
    
    @validar_dados_obrigatorios_departamentos
    Cenario: Validar dados obrigatórios departamentos
        Dado que eu esteja logado no sistema com um usuario autorizado
        Quando eu acesso o menu Departamentos
        E clico no botão Adicionar departamento
        E informo o Nome "Testes departamento"
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "Campo obrigatório" 
            
    @incluir_departamentos
    Cenario: Incluir departamento
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu departamentos
        E clico no botão Adicionar departamento
        E informo os dados do departamento
        # E adiciono um arquivo
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "departamento adicionada com sucesso"

    @alterar_departamentos
    Cenario: Alterar departamento
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu departamentos
        E informo o Título na tela de edição "Testes automatizados"
        E clico no botão Buscar
        E clico em Editar departamento
        E edito os dados do departamento
        E clico no botão Confirmar
        Entao o sistema deve exibir a mensagem "roteiro atualizada com sucesso"
        
    @deletar_departamentos
    Cenario: Deletar departamento
        Dado que eu esteja logado no sistema com um usuario admin
        Quando eu acesso o menu departamentos
        E informo o Título na tela de edição "Testes automatizados"
        E clico no botão Buscar
        E clico em deletar departamento
        E clico no botão delete sim
        Entao o sistema deve exibir a mensagem "departamento deletada com sucesso"    
        