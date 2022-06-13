  Dado('que eu esteja logado no sistema com um usuario autorizado') do
    @loguin = LoguinPage.new
    @loguin.load
    @loguin.logar_usuario_admin
  end



  Quando('eu acesso o menu disponibilidade') do
    MenuPage.new.clicar_menu_disponibilidades
  end
  
  Quando('clico no botão Adicionar disponibilidade') do
    DisponibilidadePage.new.clicar_btn_adicionar_disponibilidade
  end
  
  Quando('informo os dados da disponibilidade') do
    DisponibilidadePage.new.informar_dados_disponibilidade
  end
  
  Quando('informo o nome da disponibilidade') do
    DisponibilidadePage.new.preencher_input_name
  end
  
  Quando('clico em Editar disponibilidade') do
    DisponibilidadePage.new.clicar_btn_editar
  end
  
  Quando('edito os dados da disponibilidade') do
    DisponibilidadePage.new.editar_dados_disponibilidade
  end
  
  Quando('informo o nome na tela de consulta disponibilidade') do
    DisponibilidadePage.new.informar_nome_consulta_disponibilidade
  end
  
  Quando('clico em deletar disponibilidade') do
    DisponibilidadePage.new.clicar_btn_deletar
  end


