Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
end


Quando('eu acesso o menu metas') do
    MenuPage.new.clicar_menu_metas
  end
  
  Quando('clico no botão Adicionar meta') do
    MetasPage.new.clicar_btn_adicionar_meta
  end
  
  Quando('informo os dados da meta') do
    MetasPage.new.informo_dados_meta
  end
  
  Quando('informo o nome da meta') do
    MetasPage.new.preencher_input_name
  end
  
  Quando('informo o nome na tela de consulta meta') do
    MetasPage.new.informo_nome_consulta_meta
  end
  
  Quando('clico em Editar meta') do
    MetasPage.new.clicar_btn_editar
  end
  
  Quando('edito os dados da meta') do
    MetasPage.new.editar_dados_meta
  end

  Quando('clico em deletar meta') do
    MetasPage.new.clicar_btn_deletar
  end