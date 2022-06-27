Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
  end


Quando('eu acesso o menu tabulações') do
    MenuPage.new.clicar_menu_tabulacoes
  end
  
  Quando('clico no botão Adicionar tabulações') do
    TabulacoesPage.new.clicar_btn_adicionar_tabulacoes
  end
  
  Quando('informo os dados da tabulação') do
    TabulacoesPage.new.informar_dados_tabulacao
  end
  
  Quando('informo o nome da tabulação') do
    TabulacoesPage.new.informar_nome_tabulacao
  end
  
  Quando('informo o nome na tela de consultar tabulações') do
    TabulacoesPage.new.informo_nome_tela_consulta_tabulacao
  end
  
  Quando('clico em Editar tabulação') do
    TabulacoesPage.new.clicar_btn_editar
  end
  
  Quando('edito os dados da tabulação') do
    TabulacoesPage.new.editar_dados_tabulacao
  end
  
  Quando('clico em deletar tabulação') do
    TabulacoesPage.new.clicar_btn_deletar
  end

  Quando('clico no checkbox global tabulações') do
    TabulacoesPage.new.click_checkbox_global_tabulacao
  end