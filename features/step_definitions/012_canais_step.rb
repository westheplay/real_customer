Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
end
  


Quando('eu acesso o menu canais') do
    MenuPage.new.clicar_menu_canais
end
  
  Quando('clico no botão Adicionar canal') do
    CanaisPage.new.clicar_btn_adicionar_canal
  end
  
  Quando('informo os dados do canal') do
    CanaisPage.new.informar_dados_canal
  end
  
  Quando('informo o nome do canal') do
    CanaisPage.new.informar_nome
  end
  
  Quando('clico em Editar canal') do
    CanaisPage.new.clicar_btn_editar
  end
  
  Quando('edito os dados do canal') do
    CanaisPage.new.alterar_dados_canal
  end
  
  Quando('informo o nome na tela de consulta canal') do
    CanaisPage.new.informar_nome_consulta_canal
  end
  
  Quando('clico em deletar canal') do
    CanaisPage.new.clicar_btn_deletar
  end