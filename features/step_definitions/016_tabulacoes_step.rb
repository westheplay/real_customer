Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
  end


Quando('eu acesso o menu tabulacoes') do
    MenuPage.new.clicar_menu_tabulacoes
  end
  
  Quando('clico no botão Adicionar tabulacoes') do
    TabulacoesPage.new.clicar_btn_adicionar_tabulacoes
  end
  
  Quando('informo os dados da tabulacao') do
    TabulacoesPage.new.informar_dados_tabulacao
  end
  
  Quando('informo o nome da tabulacao') do
    TabulacoesPage.new.informar_nome_tabulacao
  end
  
  Quando('informo o nome na tela de consulta tabulacoes') do
    TabulacoesPage.new.informo_nome_tela_consulta_tabulacao
  end
  
  Quando('clico em Editar tabulacao') do
    TabulacoesPage.new.clicar_btn_editar
  end
  
  Quando('edito os dados da tabulacao') do
    TabulacoesPage.new.editar_dados_tabulacao
  end
  
  Quando('clico em deletar tabulacao') do
    TabulacoesPage.new.clicar_btn_deletar
  end

  Quando('clico no checkbox global tabulações') do
    TabulacoesPage.new.click_checkbox_global_tabulacao
  end