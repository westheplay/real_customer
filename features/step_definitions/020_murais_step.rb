Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
end


Quando('eu acesso o menu murais') do
    MenuPage.new.clicar_menu_murais
  end
  
  Quando('clico no botão Adicionar mural') do
    MuraisPage.new.clicar_btn_adicionar_mural
  end
  
  Quando('informo os dados da mural') do
    MuraisPage.new.informar_dados_mural
  end
  
  Quando('informo o titulo da mural') do
    MuraisPage.new.informar_titulo_mural
  end
  
  Quando('informo o titulo na tela de consulta mural') do
    MuraisPage.new.informo_titulo_consulta_mural
  end
  
  Quando('clico em Editar mural') do
    MuraisPage.new.clicar_btn_editar
  end
  
  Quando('edito os dados da mural') do
    MuraisPage.new.editar_dados_mural
  end
  
  Quando('informo o titulo na tela de conslta mural') do
    MuraisPage.new.informo_titulo_consulta_mural
  end
  
  Quando('clico em deletar mural') do
    MuraisPage.new.clicar_btn_deletar
  end


  Quando('informo uma habilidade mural') do
    MuraisPage.new.informo_habilidade_mural
  end