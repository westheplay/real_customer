Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
end

Quando('eu acesso o menu exceção') do
    MenuPage.new.clicar_menu_execao
end
  
Quando('clico no botão Adicionar exceção') do
    ExcecaoPage.new.clicar_btn_adicionar_execao
end
  
Quando('informo os dados da exceção') do
    ExcecaoPage.new.informar_dados_execao
end
  
Quando('informo o nome da exceção') do
    ExcecaoPage.new.informar_nome
end
  
Quando('clico em Editar exceção') do
    ExcecaoPage.new.clicar_btn_editar_execao
end
  
Quando('edito os dados da exceção') do
    ExcecaoPage.new.alterar_dados_execao
end
  
Quando('informo o nome na tela de consultar exceção') do
    ExcecaoPage.new.informar_nome_consulta
end
  
Quando('clico em deletar exceção') do
    ExcecaoPage.new.clicar_btn_deletar_execao
end